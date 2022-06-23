from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY='thisisjustthedevsecret1234567890'
DEBUG = True

ALLOWED_HOSTS = ['0.0.0.0', 'localhost']

ORIGIN_WHITELIST = [
     'http://localhost',
     'http://127.0.0.1',
]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

