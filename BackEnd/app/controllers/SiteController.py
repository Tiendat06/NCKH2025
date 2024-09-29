from flask import jsonify
from app.services.SiteService import SiteService


class SiteController:
    def __init__(self):
        self.siteService = SiteService()

    def index(self):
        return jsonify({
            'status': True,
            "message": "Home Page",
            'data': self.siteService.index()
        })
