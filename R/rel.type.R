# -----------------------------------------------------------------------------
# rel.type
#   get the relational operators type of an call or expression
#
#   n.b.
#     - cf operators::op.type
#     - No replacement methods available for rel.type.
# -----------------------------------------------------------------------------

rel.type <- function(x) 
  UseMethod( 'rel.type', x ) 

rel.type.name <- function(x) 
  if( is.operator(x, type='relational') ) {
    .Options$operators[[as.character(x)]][['rel.type']]
  } else { 
    NULL
  }

rel.type.function <- function(x) 
  if( is.operator(x, type='relational') ) {
    .Options$operators[[ fun2name(x) ]][['rel.type']] 
  } else { 
    NULL
  }

