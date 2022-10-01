# Bacnk-End Heroes API

Ruby on Rails 6.

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      2.7.6
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.7
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite3 - Development)
    </td>
  </tr>
</table>

## Initial settings to run the project

```bash
# clone the project
git clone https://github.com/Rafaelsantossgaldino/banckend_api_heroes.git

# enter the cloned directory
cd backend_api_heroes

# install Ruby on Rails dependencies
bundle install --without production

# create the development and test databases
rails db:create

# create the tables
rails db:migrate

# run the project
rails s
```

The backend is available at `http://localhost:3000`.

## Using the HEROES API

### Include a Header Authorization

For all requests, use an **Authorization header**, of size >= 10 characters, so that you can only manipulate your data, for example:

### API Endpoint

The following endpoints are available:

| Endpoints                   | Usage                                     | Params             |
| --------------------------- | ----------------------------------------- | ------------------ |
| `GET /api/heroes`           | Get all of the heroes.                    |                    |
| `GET /api/heroes?name=term` | Get all heroes with `name` like a `term`. | **term**: [String] |
| `GET /api/heroes/:id`       | Get the details of a single hero.         |                    |
| `POST /api/heroes`          | Add a new hero.                           | **name**: [String] |
| `PUT /api/heroes/:id`       | Edit the details of an existing hero.     | **name**: [String] |
| `DELETE /api/heroes/:id`    | Remove the hero.                          |                    |

### Using Insomnia to test the API

If you want to import the above requests into [Insomnia](https://insomnia.rest/download), use the file `Insomnia.json` at the root of this project.

It will be necessary to install the plugin [insomnia-plugin-dotenv](https://insomnia.rest/plugins/insomnia-plugin-dotenv).

In Insomnia, go to `Manage Environments` and set the `envFilePath` value to the file path `.env.development`:

Any `.env.*` file is being ignored by this project's GIT.
