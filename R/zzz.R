  
# .First.lib <- function( libname, pkgname ) {
.onAttach <- function( libname, pkgname ) {

  cat( 
    "\n  ", 
    pkgname , 
    "-" , 
    utils::installed.packages()[ pkgname , "Version"], 
    " provided by Open Data.\n\n" ,
    sep = ""
  )

  .initOps()

  #if( 
  #  "operators" %in% installed.packages()[,1] && 
  #  "package:operators" %in% search 
  # ) 1 # .init.pkg.operators 

  # .loadOptions() 
}

# .onAttach <- function( libname, pkgname ){
#  loadOptions( )
# }

# .loadOptions <- function() {
#  opt.file <- system.file( "options", "options.R", package = "operator.tools" )
#  if( file.exists( opt.file ) ) source( opt.file )
# }

