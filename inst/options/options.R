# Define the operators xxxhere
#  operator: type, function, args, body, inverse
#  operators: a list of operators. 
#  how do we retrieve from a collections all objects that have a certain attribute / match
#    a certain .... getFrom( li, where =
#    li[ li{type} 
#  This is starting to feel like a data.frame, but not all items have the same ... attributes
#    sapply( li, function(x) x[['type']] )
#    like a dataframe which is just a list of col.vectors.  



# SET OPERATORS
setOperator( '::',  type = 'namespace' )
setOperator( ':::', type = 'namespace' )

setOperator( '@',   type = 'component' )
setOperator( '$',   type = 'component' )  

setOperator( '[',   type = 'indexing' )
setOperator( '[[',  type = 'indexing' )

setOperator( ':',  type = 'sequence' )

setOperator( '+',  type = 'arithmetic', inverse = '-' )
setOperator( '-',  type = 'arithmetic', inverse = '+' )
setOperator( '*',  type = 'arithmetic', inverse = '/' )
setOperator( '/',  type = 'arithmetic', inverse = '*' )
setOperator( '^',  type = 'arithmetic' )  # inverse = as.name('log') 
setOperator( '%%', type = 'arithmetic' ) 


setOperator( '<',    type = 'relational', inverse = '>=', rel.type = 'lt' )
setOperator( '<=',   type = 'relational', inverse = '>',  rel.type = 'lt' )
setOperator( '>',    type = 'relational', inverse = '<=', rel.type = 'gt' )
setOperator( '>=',   type = 'relational', inverse = '<',  rel.type = 'gt' )
setOperator( '==',   type = 'relational', inverse = '!=', rel.type = 'eq' )
# setOperator( '!=',   type = 'relational', inverse = '==', rel.type = 'ne' )
setOperator( '%in%', type = 'relational', rel.type = 'eq' )  # %!in% 

setOperator( '!',  type = 'logical' ) # inverse = identity, !?    
setOperator( '&',  type = 'logical' ) 
setOperator( '&&', type = 'logical' )
setOperator( '|',  type = 'logical' ) 
setOperator( '||', type = 'logical' )

setOperator( '~', type = 'tilde' )

# Cannot work on rightward assingment "syntactic equivalents" ->, ->>
setOperator( '<-',  type = 'assignment' )  # inverse rm
setOperator( '<<-', type = 'assignment' )  # 
setOperator( '=',   type = 'assignment' ) 
 
setOperator( '?', type = 'help' ) 

setOperator( '%*%', type = 'matrix' )
setOperator( '%x%', type = 'matrix' )
setOperator( '%o%', type = 'matrix' )




