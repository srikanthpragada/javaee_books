# javaee_books
A simple CRUD application using JSP + JSTL using Oracle database

This project uses the following:

1. Oracle Database 11g.
2. Listener to create an OracleDataSource and place it in ServletContext object as attribute so that it can be used all pages in the project
3. JSTL core and sql tags
4. JSPs
5. Style sheet and HTML 


Use  WEB-INF/database.sql  script to create required table and sequence. 

This project uses HR account of Oracle. in case you use a different user in Oracle then change code in DatabaseListener.java accordingly.

<b>NOTE: </b> Make sure you place ojdbc6.jar (Oracle JDBC Driver) and  jstl-1.2.jar (JSTL) in WEB-INF/LIB folder.
