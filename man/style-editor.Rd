% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/styleEditor.R
\name{addStyleEditor}
\alias{addStyleEditor}
\alias{removeStyleEditor}
\title{Add style editor}
\usage{
addStyleEditor(
  map,
  position = c("topleft", "topright", "bottomleft", "bottomright"),
  openOnLeafletDraw = TRUE,
  useGrouping = FALSE,
  ...
)

removeStyleEditor(map)
}
\arguments{
\item{map}{the map widget}

\item{position}{position of the control}

\item{openOnLeafletDraw}{whether to open automatically when used with \code{\link{addDrawToolbar}}()}

\item{useGrouping}{Should be false to work with \code{\link{addDrawToolbar}}()}

\item{...}{other options. See \href{https://github.com/dwilhelm89/Leaflet.StyleEditor/blob/master/src/javascript/Leaflet.StyleEditor.js}{plugin code}}
}
\description{
Add style editor

Remove style editor
}
\examples{
leaflet() \%>\%
  setView(0, 0, 2) \%>\%
  addProviderTiles(providers$CartoDB.Positron) \%>\%
  addDrawToolbar(
    targetGroup = "draw",
    editOptions = editToolbarOptions(selectedPathOptions = selectedPathOptions())
  ) \%>\%
  addLayersControl(
    overlayGroups = c("draw"), options = layersControlOptions(collapsed = FALSE)
  ) \%>\%
  # add the style editor to alter shapes added to map
  addStyleEditor()
}
