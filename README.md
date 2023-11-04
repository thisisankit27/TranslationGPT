# TranslationGPT

## Project Overview

This is a Django project that utilizes the Django framework (v4.2.6) along with other dependencies such as `django_environ` (v0.11.2), `torch` (v2.1.0), and `transformers` (v4.34.1).
## Getting Started

Follow these steps to set up and run the project locally:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/thisisankit27/TranslationGPT.git
   ```

2. Navigate to the repo directory:

   ```bash
   cd TranslationGPT
   ```

3. Create a virtual environment (optional but recommended):

   ```bash
   python -m venv venv
   ```
   or
   ```bash
   pip install virtualenvwrapper-win
   mkvirtualenv translationEnv
   ```

   Activate the virtual environment:

   - On Windows:

     ```bash
     venv\Scripts\activate
     ```
     or
     ```bash
     workon translationEnv
     ```

   - On macOS and Linux:

     ```bash
     source venv/bin/activate
     ```

4. Install the project dependencies:

   ```bash
   pip install -r requirements.txt
   ```

5. Navigate to the project directory:

   ```bash
   cd project
   ```

6. Open IDE in the same environment:

   ```bash
   code .
   ```

6. Set up your environment variables:

   Create a `.env` file in the same directory as `settings.py` and add the following:

   ```env
   SECRET_KEY=<your_secret_key>
   ```

   Replace `<your_secret_key>` with your custom secret key.

7. Migrate the database:

   ```bash
   python manage.py migrate
   ```

8. Run the development server:

   ```bash
   python manage.py runserver
   ```

   The project should now be accessible at `http://127.0.0.1:8000`.

## Additional Notes

- Make sure to keep your secret key confidential and do not share it publicly.
- For any issues or inquiries, feel free to [contact us](mailto:thisisankitsrivastava@example.com).

Happy coding!
```