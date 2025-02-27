% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/catboost.R
\name{catboost.get_feature_importance}
\alias{catboost.get_feature_importance}
\title{Calculate the feature importances}
\usage{
catboost.get_feature_importance(
  model,
  pool = NULL,
  type = "FeatureImportance",
  thread_count = -1,
  fstr_type = NULL
)
}
\arguments{
\item{model}{The model obtained as the result of training.

Default value: Required argument}

\item{pool}{The input dataset.

The feature importance for the training dataset is calculated if this argument is not specified.

Default value: NULL}

\item{type}{The feature importance type.

Possible values:
\itemize{
  \item 'PredictionValuesChange'

    Calculate score for every feature.

  \item 'LossFunctionChange'

    Calculate score for every feature for groupwise model.

  \item 'FeatureImportance'

    'LossFunctionChange' in case of groupwise model and 'PredictionValuesChange' otherwise.

  \item 'Interaction'

    Calculate pairwise score between every feature.

  \item 'ShapValues'

    Calculate SHAP Values for every object.

}

Default value: 'FeatureImportance'}

\item{thread_count}{The number of threads to use when applying the model. If -1, then the number of threads is set to the number of CPU cores.

Allows you to optimize the speed of execution. This parameter doesn't affect results.

Default value: -1}

\item{fstr_type}{Deprecated parameter, use 'type' instead.}
}
\value{
Feature importances
}
\description{
Calculate the feature importances (see \url{https://catboost.ai/docs/concepts/fstr.html#fstr})
             (Regular feature importance, ShapValues, and Feature interaction strength).
}
\seealso{
\url{https://catboost.ai/docs/features/feature-importances-calculation.html}
}
