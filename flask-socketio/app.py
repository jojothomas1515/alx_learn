#!/usr/bin/env python

"""Example."""

from flask import Flask, render_template, request
from flask_socketio import SocketIO, join_room, leave_room, rooms
import json
from datetime import datetime as dt

app = Flask(__name__)
sio = SocketIO(app)

connected_sid:dict = {}
other_users:list = []

@sio.event
def connect():
    print("hello connected")
    join_room("home", request.sid)
    pass

@sio.event
def disconnect():
    print("hello man")
    leave_room("home", request.sid)
    pass

@sio.on("play")
def play(data):
    sio.emit("play", data, room="home")
    pass

@app.route("/")
def index():
    return render_template("index.html")

if __name__ == "__main__":

    sio.run(app, debug=True)
