README
------

### PROGRAMMING TASK

#### PREFACE
Implement a simple API that allows to validate bonus codes for pre-sale
program. Given a set of products with title attribute. Each product has
a set of bonus codes assigned. These bonus codes may be either
pre-loaded into the system or not. When user enters a bonus code we need
to validate it to check that bonus code has been purchased. For some
products a third-party service can be used for validation. There are 2
types of such services (but may be more in future). Each product can be
linked to a particular service.

There is no need to implement a complete wrapper for a third-party API.
A dummy on is enough. Full test coverage is required.

DATA
Products:
Id Title             Bonus Codes  Status      Service
1  Halo 4            Pre-loaded   Pre-loaded  
2  Samsung Galaxy 4  Pre-loaded   via Service TV
3  Skype $10         via Service  via Service RTG

API requirements
URL:/bonus_codes/validate
HTTP METHOD: GET
PARAMS: product_id, bonus_code

Sample request:
GET /bonus_codes/validate?product_id=123454345&bonus_code=68483737392

Sample responses:
HTTP 200 OK
or
HTTP 404 NOT FOUND if bonus code doesn't belong to  a product with
provided product_id.
HTTP 403 FORBIDDEN if bonus code hasn't been sold.

vlada@adility.com

#### 20 May 2015 Oleg G.Kapranov
