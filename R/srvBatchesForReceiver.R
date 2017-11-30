#' get the batches for a receiver from the data server
#'
#' @param deviceID integer scalar motus device ID
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

srvBatchesForReceiver = function(deviceID, batchID=0, includeTesting=FALSE) {
    x = srvQuery(API=Motus$API_BATCHES_FOR_RECEIVER, params=list(deviceID=deviceID, batchID=batchID, includeTesting=includeTesting))
    return (structure(x, class = "data.frame", row.names=seq(along=x[[1]])))
}
