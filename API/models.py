from datetime import datetime
from pony.orm import *


db = Database()


class User(db.Entity):
    id = PrimaryKey(int, auto=True)
    name = Optional(str)
    surname = Optional(str)
    phone = Optional(str)
    email = Optional(str, unique=True)
    password = Optional(str)
    appointments = Set('Appointment')
    reviews = Set('Review')


class Doctor(db.Entity):
    id = PrimaryKey(int, auto=True)
    name = Optional(str)
    surname = Optional(str)
    phone = Optional(str)
    email = Optional(str)
    password = Optional(str)
    plan = Optional(str)
    gender = Optional(str)
    title = Optional(str)
    specialization = Optional(str)
    hospital = Optional(str)
    address = Optional(str, 300)
    postal_code = Optional(str)
    information = Optional(str, 3000)
    education = Optional(str, 500)
    status = Optional(str)
    appointments = Set('Appointment')
    reviews = Set('Review')
    services = Set('Service')


class Service(db.Entity):
    id = PrimaryKey(int, auto=True)
    doctor_id = Optional(int)
    name = Optional(str)
    price = Optional(str)
    appointments = Set('Appointment')
    reviews = Set('Review')
    doctors = Set(Doctor)


class Appointment(db.Entity):
    id = PrimaryKey(int, auto=True)
    start_time = Optional(datetime)
    end_time = Optional(datetime)
    message_doc = Optional(str, 2000)
    message_user = Optional(str, 2000)
    user = Required(User)
    doctor = Required(Doctor)
    service = Optional(Service)


class Review(db.Entity):
    id = PrimaryKey(int, auto=True)
    title = Optional(str)
    review = Optional(str)
    rating = Optional(str)
    user = Required(User)
    doctor = Required(Doctor)
    service = Optional(Service)



db.generate_mapping()