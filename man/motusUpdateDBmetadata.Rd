% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/motusUpdateDBmetadata.R
\name{motusUpdateDBmetadata}
\alias{motusUpdateDBmetadata}
\title{update the metadata for receivers and tags in a motus tag detection database}
\usage{
motusUpdateDBmetadata(sql, tagIDs = NULL, deviceIDs = NULL, force = FALSE)
}
\arguments{
\item{sql}{safeSQL object representing the tag project database}

\item{tagIDs}{integer vector of tag IDs for which metadata should
be obtained; default: NULL, meaning obtain metadata for all tags
with detections in the database.  Negative values represent
proxy tags for groups of ambiguous real tags, and if present in \code{tagIDs}
the groups represented by them are fetched and stored in the DB's
\code{tagAmbig} table.}

\item{deviceIDs}{integer vector of device IDs for which metadata
should be obtained; default: NULL, meaning obtain metadata for all
receivers from which the database has detections}

\item{force}{logical scalar; if TRUE, re-obtain metadata even if we
already have it.}
}
\description{
update the metadata for receivers and tags in a motus tag detection database
}
\seealso{
\code{\link{tagme}}, which is intended for most users, and
    indirectly calls this function.
}
\author{
John Brzustowski \email{jbrzusto@REMOVE_THIS_PART_fastmail.fm}
}
