fit_models <- function(formula, data) {
  
  fit.glmm <- lme4::glmer(formula, 
                          data = data, 
                          family = "poisson", 
                          offset = log(tj))
  
  sjPlot::tab_model(fit.glmm)
  
}

# example of how to use the function
# fit_models(formula = y ~ trt*post + (1|subject), data = df_epil)
