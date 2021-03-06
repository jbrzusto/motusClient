% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/srvAuth.R
\name{srvAuth}
\alias{srvAuth}
\title{Authenticate with the data server.}
\usage{
srvAuth()
}
\value{
a character scalar authentication/authorization token
}
\description{
Use Motus$userLogin and Motus$userPassword to get an authentication
token from the data server.
}
\details{
if login is unsuccessful, execution stops with an error message
}
\seealso{
\code{\link{Motus}}
}
\author{
John Brzustowski \email{jbrzusto@REMOVE_THIS_PART_fastmail.fm}
}
