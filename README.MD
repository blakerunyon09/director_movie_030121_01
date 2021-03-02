# Directors & Movies
We'll build a website that lists directors and their movies.

 - A director can have several movies.
 - A movie can have one director.

BACKEND:

- Director Model ***
  - Attributes: Name (String)

- Movie Model ***
  - Attributes: Name (String), Rating (Int), Director (References)

- Director Controller ***
  - Index
  - Show
  - Create
  - Update
  - Delete

FRONTEND:

- All Directors Page
  - Page Title
  - Form: Create New Movie
  - Form: Directors Selector is Dynamic
  - List of Directors & Links to Their Page

- Single Director Page
  - Include Directors Name
  - List of Directors Movies
  - Link Back to Home
