#' get the hits for a tag project from the data server
#'
#' @param projectID integer scalar motus project ID
#' @param batchID integer scalar motus batch ID
#' @param hitID double scalar ID of latest hit already obtained.
#' Default: 0, meaning none.
#'
#' @return data.frame with these columns:
#' \itemize{
#'   \item (double) hitID
#'   \item (double) runID
#'   \item (integer) batchID
#'   \item (double) ts
#'   \item (double) sig
#'   \item (double) sigSD
#'   \item (double) noise
#'   \item (double) freq
#'   \item (double) freqSD
#'   \item (double) slop
#'   \item (double) burstSlop
#' }
#'
#' @export
#'
#' @author John Brzustowski \email{jbrzusto@@REMOVE_THIS_PART_fastmail.fm}

srvHitsForTagProject = function(projectID, batchID, hitID=0) {
    x = srvQuery(API=Motus$API_HITS_FOR_TAG_PROJECT, params=list(projectID=projectID, batchID=batchID, hitID=hitID))
    return (structure(x, class = "data.frame", row.names=seq(along=x[[1]])))
}
