#' get the batches for a tag project from the data server
#'
#' @param projectID integer scalar motus project ID
#'
#' @param batchID integer largest batchID already owned for this project.
#' Default: 0, meaning none.
#'
#' @param includeTesting logical scalar; default: FALSE. If TRUE,
#' return testing batches as well as normal batches, but only
#' if user is an administrator.  Testing batches are not real data!
#'
#' @return data.frame with these columns:
#' \itemize{
#' \item batchID integer motus batch ID
#' \item motusDeviceID integer motus device ID
#' \item monoBN boot number, for SG receivers; NA for Lotek
#' \item tsStart first timestamp of data
#' \item tsEnd last timestamp of data
#' \item numHits integer number of hits
#' \item ts real processing timestamp
#' }
#'
#' @export
#'
#' @author John Brzustowski \email{jbrzusto@@REMOVE_THIS_PART_fastmail.fm}

srvBatchesForTagProject = function(projectID, batchID=0, includeTesting=FALSE) {
    x = srvQuery(API=Motus$API_BATCHES_FOR_TAG_PROJECT, params=list(projectID=projectID, batchID=batchID, includeTesting=includeTesting))
    return (structure(x, class = "data.frame", row.names=seq(along=x[[1]])))
}
