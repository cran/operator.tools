  
# .First.lib <- function( libname, pkgname ) {
.onAttach <- function( libname, pkgname ) {

  if( interactive() )
    packageStartupMessage( 
      pkgname ,
      "-" ,
      utils::packageVersion(pkgname, libname),
      " - Copyright \u00a9 ", substr(Sys.Date(),1,4),
      " Decision Patterns" ,
      domain = NA
    )


}

.onLoad <- function(libname, pkgname) 
  # Initializes package
  .initOps()
