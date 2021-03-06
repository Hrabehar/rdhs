% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api_endpoints.R
\name{dhs_publications}
\alias{dhs_publications}
\title{API request of DHS Publications}
\usage{
dhs_publications(
  countryIds = NULL,
  selectSurveys = NULL,
  indicatorIds = NULL,
  surveyIds = NULL,
  surveyYear = NULL,
  surveyYearStart = NULL,
  surveyYearEnd = NULL,
  surveyType = NULL,
  surveyCharacteristicIds = NULL,
  tagIds = NULL,
  f = NULL,
  returnFields = NULL,
  perPage = NULL,
  page = NULL,
  client = NULL,
  force = FALSE,
  all_results = TRUE
)
}
\arguments{
\item{countryIds}{Specify a comma separated list of country ids to filter
by. For a list of countries use
\code{dhs_countries(returnFields=c("CountryName","DHS_CountryCode"))}}

\item{selectSurveys}{Specify to filter data from the latest survey by
including `selectSurveys=TRUE` in your request. Note: Please use this
parameter in conjunction with countryCode, surveyType, or indicatorIds
for best results.}

\item{indicatorIds}{Specify a comma separated list of indicators ids to
filter by. For a list of indicators use
\code{dhs_indicators(returnFields=c("IndicatorId","Label","Definition"))}}

\item{surveyIds}{Specify a comma separated list of survey ids to filter by.
For a list of surveys use
\code{dhs_surveys(returnFields=c("SurveyId","SurveyYearLabel",
"SurveyType","CountryName"))}}

\item{surveyYear}{Specify a comma separated list of survey years to
filter by.}

\item{surveyYearStart}{Specify a range of Survey Years to filter
Publications on. surveyYearStart is an inclusive value. Can be used alone
or in conjunction with surveyYearEnd.}

\item{surveyYearEnd}{Specify a range of Survey Years to filter Publications
on. surveyYearEnd is an inclusive value. Can be used alone or in
conjunction with surveyYearStart.}

\item{surveyType}{Specify a survey type to filter by.}

\item{surveyCharacteristicIds}{Specify a survey characteristic id to filter
publications with countries with the specified survey characteristics.
For a list of survey characteristics use
\code{dhs_surveys(returnFields=c("SurveyId","SurveyYearLabel",
"SurveyType","CountryName"))}}

\item{tagIds}{Specify a tag id to filter publications with surveys
containing indicators with the specified tag. For a list of tags use
\code{dhs_tags()}}

\item{f}{You can specify the format of the data returned from the query as
HTML, JSON, PJSON, geoJSON, JSONP, XML or CSV. The default data format is
JSON.}

\item{returnFields}{Specify a list of attributes to be returned.}

\item{perPage}{Specify the number of results to be returned per page. By
default the API will return 100 results.}

\item{page}{Allows specifying a page number to obtain for the API request.
By default the API will return page 1.}

\item{client}{If the API request should be cached, then provide a client
object created by \code{\link{client_dhs}}}

\item{force}{Should we force fetching the API results, and ignore any
cached results we have. Default = FALSE}

\item{all_results}{Boolean for if all results should be returned. If FALSE
then the specified page only will be returned. Default = TRUE.}
}
\value{
Returns a \code{data.table} of 10 (or less if \code{returnFields} is provided)
  publications with detailed information for each publication. A detailed
  description of all the attributes returned is provided at
  \url{https://api.dhsprogram.com/rest/dhs/publications/fields}
}
\description{
API request of DHS Publications
}
\examples{

\dontrun{
# A main use for the publications API endpoint is to find which surveys have
# a published report resulting from the conducted survey:

dat <- dhs_publications()

# A complete list of examples for how each argument to the publications
# API endpoint can be provided is given below, which is a
# copy of each of the examples listed in the API at:

# https://api.dhsprogram.com/#/api-publications.cfm


dat <- dhs_publications(countryIds="EG",all_results=FALSE)
dat <- dhs_publications(selectSurveys="latest",all_results=FALSE)
dat <- dhs_publications(indicatorIds="FE_FRTR_W_TFR",all_results=FALSE)
dat <- dhs_publications(surveyIds="SN2010DHS",all_results=FALSE)
dat <- dhs_publications(surveyYear="2010",all_results=FALSE)
dat <- dhs_publications(surveyYearStart="2006",all_results=FALSE)
dat <- dhs_publications(surveyYearStart="1991", surveyYearEnd="2006",
all_results=FALSE)
dat <- dhs_publications(surveyType="DHS",all_results=FALSE)
dat <- dhs_publications(surveyCharacteristicIds="32",all_results=FALSE)
dat <- dhs_publications(tagIds=1,all_results=FALSE)
dat <- dhs_publications(f="html",all_results=FALSE)
}
}
