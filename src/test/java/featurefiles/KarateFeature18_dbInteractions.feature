Feature: Karate Test Suite 18
  DB interactions

  Background: dbInit
    * def db = Java.type("utils.MyDBUtils")

  @db @select
  Scenario: select statement test case 1
    db select validation 1

    * def rows = db.selectStatement("select * from tools")
    * print rows
    #* match rows contains "RestClient"

  @db @insert
  Scenario: insert statement test case 1
  db insert validation 1

    * def result = db.insertStatement("Insert into tools values(2102,'testKarate','BDD')")
    * print result
    * match result == "Success"
    * def rows = db.selectStatement("select * from tools where toolid=2102")
    * print rows
    * match rows contains "testKarate"

  @db @update
  Scenario: update statement test case 1
  db update validation 1

    * def rowsAffected = db.updateStatement("update tools set toolname='testKarate2102' where toolid=2102")
    * print rowsAffected
    * assert rowsAffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=2102")
    * print rows
    * match rows contains "testKarate2102"

  @db @delete
  Scenario: delete statement test case 1
  db delete validation 1

    * def rowsAffected = db.deleteStatement("delete from tools where toolid=2102")
    * print rowsAffected
    * assert rowsAffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=2102")
    * print rows
    * match rows !contains "testKarate2102"