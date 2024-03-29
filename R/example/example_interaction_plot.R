# To get the interaction SHAP dataset for plotting:
# fit the xgboost model

# options("Ncup" = 1)
mod1 = xgboost::xgboost(
  data = as.matrix(iris[,-5]), label = iris$Species,
  gamma = 0, eta = 1, lambda = 0, nrounds = 1, verbose = FALSE, nthread = 1)
# Use either:
data_int <- shap.prep.interaction(xgb_mod = mod1,
                                  X_train = as.matrix(iris[,-5]))
# or:
shap_int <- predict(mod1, as.matrix(iris[,-5]),
                    predinteraction = TRUE)

# **SHAP interaction effect plot **
shap.plot.dependence(data_long = shap_long_iris,
                           data_int = shap_int_iris,
                           x="Petal.Length",
                           y = "Petal.Width",
                           color_feature = "Petal.Width")
