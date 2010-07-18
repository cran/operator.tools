
.pkg.operators <- function() {

  setOperator( '%but%', 'function' )

  setOperator( '%x=%', 'string' )
  setOperator( '%x=|%', 'string' )


  setOperator( '%>%', 'file' )
  setOperator( '%>>%', 'file' )
  setOperator( '%2>%', 'file' )
  setOperator( '%2>>%', 'file' )
  setOperator( '%*>%', 'file' )
  setOperator( '%*>>%', 'file' )
  setOperator( '%<%', 'file' )
  setOperator( '%<<', 'file' )

  setOperator( '%!in%', 'relational', rel.type="ne", inverse="%in%" )
    # RE-SET %in%
    setOperator( '%in%', 'relational', rel.type="eq", inverse="%!in%" )

  setOperator( '%~%', 'pattern' )
  setOperator( '%!~%', 'pattern' )
  setOperator( '%~*%', 'pattern' )
  setOperator( '%!~*%', 'pattern' )
  setOperator( '%~+%', 'pattern' )
  setOperator( '%!~+%', 'pattern' )
  setOperator( '%-~%', 'pattern' )

  setOperator( '%/~%', 'pattern division' )

  setOperator( '%~|%', 'pattern filter' )
  setOperator( '%!~|%', 'pattern filter' )


  setOperator( '%-~%', 'pattern substitution' )
  setOperator( '%-~|%', 'pattern substitution' )
  setOperator( '%o~|%', 'pattern substitution' )

  setOperator( '%|%', 'pipe' )

  setOperator( '%+=%', 'plus equals' )

  setOperator( '%of%', 'inheritance' )

  setOperator( 'without', 'matching' )

}

