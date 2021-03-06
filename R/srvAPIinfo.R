#' get information about the motus data server API
#'
#' The server is queried for a few details about the API.
#'
#' @return
#' a list with (at least) these items:
#' \itemize{
#'    \item maxRows; integer; maximum number of rows returned by any API calls
#' }
#'
#' @export
#'
#' @author John Brzustowski \email{jbrzusto@@REMOVE_THIS_PART_fastmail.fm}

srvAPIinfo = function() {
    return(srvQuery(API=Motus$API_API_INFO, params=list(), auth=FALSE))
}
