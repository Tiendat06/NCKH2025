from flask import render_template, Blueprint
from route.site import site


def route(app):
    app.register_blueprint(site, url_prefix='/')
