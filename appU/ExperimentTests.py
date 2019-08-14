__author__ = 'k0emt'

import unittest
from Experiment import Greeter

class MyTestCase(unittest.TestCase):
    def test_main_page(self):
        response = self.app.get('/', follow_redirects=True)
        self.assertEqual(response.status_code, 200)
if __name__ == '__main__':
    unittest.main()
