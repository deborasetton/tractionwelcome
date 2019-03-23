# Challenge for Traction Guest
## Team
* Débora Setton
* Guilherme Déo
* Humberto Grillo
## Project Proposition
Develop an application that makes it easy for guests to access their schedule
and assingments on an Event.
### Scope
#### What it *DOES*
##### Welcome Guest
Provides an url for the event, with welcome message and general informations
##### Access Guest information
Send a QR Code content to a Rest API that returns:
* 200 - Guest found with a schedule
* 204 - Guest found without a schedule
* 400 - Invalid QR Code
* 401 - Unauthorized with reasons why
* 404 - Guest not found
* 500 - [AVOID] Internal and not dealt Server error
##### Provide orientation
Provide the guest with a map of the event location and important landmarks highlighted.
#### What it *DOES NOT DO*
* Scan the QR Code using a cellphone camera (mocked with a file upload)
* Access a database with the stored data of the guests and events
* Insert, update and delete informations
##### Why not?
Given the time frame, the team decided to focus on a deliverable showcase
product instead of developing a full featured product that might as well
end up being incomplete.
The missing features are given as future interactions on the proposed product.
### Evolving
#### Database Support
The current project already understands JSON object, so it would be easier to
move to a noSQL database such as MongoDB or Dynamo.move
#### CRUD
Managing an event would consist on:
* Add
* CRUD for AttendingCompany and its employees
* CRUD for Guest
* CRUD for Activities
* Assign activities to guest as tasks, providing start time, duration, loation
and attendees
### Technology
* Ruby on Rails for back-end
* Python for QR Code Operations
* Angular and Bootstrap for front-end
