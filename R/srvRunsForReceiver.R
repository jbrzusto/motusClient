#' get the runs for a receiver from the data server
#'
#' @param batchID integer scalar motus batch ID
#' @param runID double scalar ID of latest run already obtained.
#' Default: 0, meaning none.
#'
#' @return a data.frame with these columns:
#' \itemize{
#'    \item (double) runID
#'    \item (integer) batchIDbegin
#'    \item (double) tsBegin
#'    \item (double) tsEnd
#'    \item (integer) done
#'    \item (integer) motusTagID
#'    \item (integer) ant
#'    \item (integer) len
#' }
#'
#' @export
#'
#' @author John Brzustowski \email{jbrzusto@@REMOVE_THIS_PART_fastmail.fm}

srvRunsForReceiver = function(batchID, runID=0) {
    x = srvQuery(API=Motus$API_RUNS_FOR_RECEIVER, params=list(batchID=batchID, runID=runID))
    return (structure(x, class = "data.frame", row.names=seq(along=x[[1]])))
}
