## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  warning = FALSE,
  message = FALSE,
  fig.width = 5,
  fig.height = 4
)

## ----setup--------------------------------------------------------------------
library("ggplot2")
library("SHAPforxgboost")
library("xgboost")

set.seed(9375)

## -----------------------------------------------------------------------------
head(iris)

X <- data.matrix(iris[, -1])
dtrain <- xgb.DMatrix(X, label = iris[[1]])

fit <- xgb.train(
  params = list(
    objective = "reg:squarederror",
    learning_rate = 0.1
  ), 
  data = dtrain,
  nrounds = 50
)


## -----------------------------------------------------------------------------
# Crunch SHAP values
shap <- shap.prep(fit, X_train = X)

# SHAP importance plot
shap.plot.summary(shap)

# Alternatively, mean absolute SHAP values
shap.plot.summary(shap, kind = "bar")

# Dependence plots in decreasing order of importance
# (colored by strongest interacting variable)
for (x in shap.importance(shap, names_only = TRUE)) {
  p <- shap.plot.dependence(
    shap, 
    x = x, 
    color_feature = "auto", 
    smooth = FALSE, 
    jitter_width = 0.01, 
    alpha = 0.4
    ) +
  ggtitle(x)
  print(p)
}


