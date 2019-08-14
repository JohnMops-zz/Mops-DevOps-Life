from flask import request
from app import app
import unittest


def test_home_data(self):
        # sends HTTP GET request to the application
        # on the specified path
        result = self.app.get('/')
        self.assertEqual(result.data, "Hello World")

if __name__ == '__main__':
    unittest.main()
