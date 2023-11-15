import mysql.connector

import User

# STATUS MAP
status_map = {
    1: "active",
    2: "inactive"
}

# ACCESS MAP
access_map = {
    1: "user",
    2: "admin",
    3: "data_entry"
}

# USER MAP
user_map = {
    1: "username",
    2: "email",
    3: "password",
    4: "account_type"
}

# TABLE MAP
table_map = {
    1: "art_object",
    2: "painting",
    3: "sculpture",
    4: "other",
    5: "permanent",
    6: "borrowed",
    7: "artist",
    8: "exhibitions",
    9: "collections",
    10: "statue"
}

# FIELD MAP
field_map = {
    "art_object": ["Id_no", "Artist_name", "Year", "Title", "Description", "Country_of_origin", "Epoch", "EName"],  # 6
    "painting": ["Id_no", "Style", "Drawn_on", "Paint_type"],  # 3
    "sculpture": ["Id_no", "Material", "Style", "Height_cm", "Weight_kg"],  # 4
    "other": ["Id_no", "Type", "Style"],  # 2
    "permanent": ["Id_no", "Cost", "Date_acquired", "Status"],  # 3
    "borrowed": ["Id_no", "Date_returned", "Date_borrowed", "Borrowed_from"],  # 2
    "artist": ["Artist_name", "Date_Born", "Date_Died", "Country_of_origin", "Main_style", "Epoch", "Description"],  # 6
    "exhibitions": ["EName", "Start_date", "End_date"],  # 3
    "collections": ["Id_no", "Description", "Type", "Address", "Phone", "Contact_person"],  # 5
    "statue": ["Id_no", "Material", "Height_cm", "Weight_kg", "Style"]
}

# prompt map
prompt_map = {
    "art_object": ["Artist_name", "Year", "Title", "Description", "Country_of_origin", "Epoch", "EName"],
    "painting": ["Style", "Drawn_on", "Paint_type"],
    "sculpture": ["Material", "Style", "Height_cm", "Weight_kg"],
    "other": ["Type", "Style"],
    "permanent": ["Cost", "Date_acquired", "Status"],
    "borrowed": ["Date_returned", "Date_borrowed", "Borrowed_from"],
    "artist": ["Artist_name", "Date_Born", "Date_Died", "Country_of_origin", "Main_style", "Epoch", "Description"],
    "exhibitions": ["EName", "Start_date", "End_date"],
    "collections": ["Description", "Type", "Address", "Phone", "Contact_person"],
    "statue": ["Material", "Height_cm", "Weight_kg", "Style"]
}


# query map
query_map = {
    "art_object": "INSERT INTO art_object (Artist_name, Year, Title, Description, Country_of_origin, Epoch, EName) VALUES (%s, %s, %s, "
                   "%s, %s, %s, %s)",
    "painting": "INSERT INTO painting (Style, Drawn_on, Paint_type) VALUES (%s, %s, %s)",
    "sculpture": "INSERT INTO sculpture (Material, Style, Height_cm, Weight_kg) VALUES (%s, %s, %s, %s)",
    "other": "INSERT INTO other (Type, Style) VALUES (%s, %s)",
    "permanent": "INSERT INTO permanent_collection (Cost, Date_acquired, Status) VALUES (%s, %s, %s)",
    "borrowed": "INSERT INTO borrowed (Date_returned, Date_borrowed, Borrowed_from) VALUES (%s, %s, %s)",
    "artist": "INSERT INTO artist (Artist_name, Date_Born, Date_Died, Country_of_origin, Main_style, Epoch, Description) "
              "VALUES ( "
              "%s, %s, %s, %s, %s, %s, %s)",
    "exhibitions": "INSERT INTO exhibition (EName, Start_date, End_date) VALUES (%s, %s, %s)",
    "collections": "INSERT INTO collection  (Description, Type, Address, Phone, Contact_person) VALUES (%s, "
                  "%s, %s, %s, %s) "
}


# DEVELOPMENT FUNCTION
# PRINTS ALL RECORDS IN THE users TABLE
def show_users(db, db_cursor):
    query = "SELECT * FROM users"
    db_cursor.execute(
        query
    )

    print(type(db_cursor))
    for record in db_cursor:
        print(type(record))
        print(record)


# DEVELOPMENT FUNCTION
# CLEARS users TABLE OF ALL RECORDS
def purge_users(db, db_cursor):
    query = "DELETE FROM users"
    db_cursor.execute(
        query
    )
    db.commit()

    for record in db_cursor:
        print(record)


# CONNECTS TO DATABASE
# RETURNS -> DB Object and DB_CURSOR Object
def connect():
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="12345678",
        database="fmuseum"
    )

    db_cursor = db.cursor()
    return db, db_cursor


# SIGN UP -> Adds new user
# RETURNS -> STATUS CODES -1 and -1 to show successful user generation
def sign_up(db, db_cursor):
    flag = 1

    while flag:
        username = str(input("Enter your username: "))
        email = str(input("Enter your email: "))
        password = str(input("Enter your password: "))

        print("SELECT YOUR ACCOUNT TYPE")
        print("1 -> USER")
        print("2 -> ADMIN")
        print("3 -> Data Entry")

        account_type = int(input("-> "))

        if account_type not in access_map.keys():
            print("BAD type flag!")
            print("Try again...")

        else:
            account_type = access_map.get(account_type)
            flag = 0

    query = "INSERT INTO users (username, email, password, account_type, status) VALUES (%s, %s, %s, %s, %s)"

    db_cursor.execute(
        query,
        (username, email, password, account_type, "active",))
    db.commit()

    return -1, -1


# LOG IN -> Checks DB for validity
# RETURNS -> A STATUS CODE of -2, and a HashMap containing user data
def log_in(db, db_cursor):
    username = str(input("Enter your username: "))
    password = str(input("Enter your password: "))

    username_query = "SELECT user_id, " \
                     "username, " \
                     "email, " \
                     "password, " \
                     "account_type, " \
                     "status FROM users WHERE username=%s"

    db_cursor.execute(
        username_query,
        (username,)
    )

    query_response = db_cursor.fetchone()

    response_body = {
        "user_id": query_response[0],
        "username": query_response[1],
        "email": query_response[2],
        "password": query_response[3],
        "account_type": query_response[4],
        "status": query_response[5]
    }

    if password == response_body["password"]:
        if response_body["status"] == "active":
            return -2, response_body
        else:
            return -2, -1
    else:
        print("Password invalid...")


def main():
    db, db_cursor = connect()  # DO NOT REMOVE

    # show_users(db, db_cursor)

    # PROMPT USER
    print("1 -> SIGN UP")
    print("2 -> LOG IN")

    option = int(input("-> "))

    if option == 1:
        response_status, response_body = sign_up(db, db_cursor)

    elif option == 2:
        response_status, response_body = log_in(db, db_cursor)

    # SIGN UP
    if response_status == -1:
        print("Account created!")

    # LOG IN
    if response_status == -2:

        if response_body == -1:
            print("Account blocked!")
            print("Log in failed!")
            return

        if response_body["account_type"] == "admin":
            admin = User.User(user_id=response_body["user_id"],
                              username=response_body["username"],
                              email=response_body["email"],
                              password=response_body["password"],
                              account_type=response_body["account_type"],
                              status=response_body["status"])

            print("Log in successful!")
            admin.greet()
            selection = admin.menu()

            # 1 -> USER MENU
            if selection == 1:
                selection = admin.user_menu()

                # ADD Users
                if selection == 1:
                    response_status, response_body = sign_up(db, db_cursor)

                # EDIT Users
                if selection == 2:
                    print("Current USERS -> ")
                    show_users(db, db_cursor)

                    print("Select a USER ID to EDIT that entry")
                    print("Enter a 0 to exit")
                    selected_id = int(input("-> "))

                    user_id_query = "SELECT user_id, " \
                                    "username, " \
                                    "email, " \
                                    "password, " \
                                    "account_type, " \
                                    "status FROM users WHERE user_id=%s"

                    db_cursor.execute(
                        user_id_query,
                        (selected_id,)
                    )

                    query_response = db_cursor.fetchone()

                    response_body = {
                        "user_id": query_response[0],
                        "username": query_response[1],
                        "email": query_response[2],
                        "password": query_response[3],
                        "account_type": query_response[4],
                        "status": query_response[5]
                    }

                    print("Fields for USER ID " + str(response_body["user_id"]))
                    print("Select an option to EDIT that field")
                    print("Enter 0 to EXIT")
                    print("1 -> USERNAME -> " + response_body["username"])
                    print("2 -> EMAIL -> " + response_body["email"])
                    print("3 -> PASSWORD -> " + response_body["password"])
                    print("4 -> ACCOUNT TYPE -> " + response_body["account_type"])

                    option = int(input("-> "))
                    change = str(input("Select new value -> "))

                    column = user_map.get(option)

                    update_query = "UPDATE users SET " + column + " =%s WHERE " + column + "=%s"

                    db_cursor.execute(
                        update_query,
                        (change, response_body[column],)
                    )
                    db.commit()

                # BLOCK Users
                if selection == 3:
                    print("Current USERS -> ")
                    show_users(db, db_cursor)

                    print("Select a USER ID to EDIT that entry")
                    print("Enter a 0 to exit")
                    selected_id = int(input("-> "))

                    if selected_id == 0:
                        return

                    user_id_query = "SELECT user_id, " \
                                    "username, " \
                                    "email, " \
                                    "password, " \
                                    "account_type, " \
                                    "status FROM users WHERE user_id=%s"

                    db_cursor.execute(
                        user_id_query,
                        (selected_id,)
                    )

                    query_response = db_cursor.fetchone()

                    response_body = {
                        "user_id": query_response[0],
                        "username": query_response[1],
                        "email": query_response[2],
                        "password": query_response[3],
                        "account_type": query_response[4],
                        "status": query_response[5]
                    }

                    print(
                        "User with USER ID " + str(response_body["user_id"]) + " has status " + response_body["status"])

                    print("1 -> Set STATUS to Active")
                    print("2 -> Set STATUS to Inactive")

                    new_status = int(input("-> "))

                    update_query = "UPDATE users SET status=%s WHERE status=%s AND user_id=%s"
                    change = status_map[new_status]

                    db_cursor.execute(
                        update_query,
                        (change, response_body["status"], response_body["user_id"])
                    )
                    db.commit()

            # 2 -> DATABASE MENU
            if selection == 2:
                selection = admin.database_menu()

                # INTERACTIVE SHELL
                if selection == 1:
                    print("SQL commands must be CASE SENSITIVE and CORRECT")
                    print("Enter a -1 to exit")
                    flag = 1
                    while flag:
                        command = str(input("-> "))
                        if command == -1:
                            flag = 0
                            break

                        db_cursor.execute(command)
                        for result in db_cursor.fetchall():
                            print(result)

                        db.commit()

                # FILE UPLOAD
                if selection == 2:
                    print("Enter the absolute path of the file: ")
                    file_name = str(input("-> "))

                    file = open(file_name, 'r')
                    sql_file = file.read()
                    file.close()

                    sql_commands = sql_file.split(';')

                    for command in sql_commands:
                        try:
                            db_cursor.execute(command)
                        except:
                            print("Command skipped")

                    db.commit()

        if response_body["account_type"] == "data_entry":
            data_entry = User.User(user_id=response_body["user_id"],
                                   username=response_body["username"],
                                   email=response_body["email"],
                                   password=response_body["password"],
                                   account_type=response_body["account_type"],
                                   status=response_body["status"])

            print("Log in successful!")
            data_entry.greet()

            print("SELECT ACTION")
            print("1 -> INFORMATION LOOKUP")
            print("2 -> INSERT DATA")
            print("3 -> DELETE/UPDATE DATA")
            selection = int(input("-> "))

            # LOOKUP
            if selection == 1:
                print("TABLES AVAILABLE")
                for i in range(1, 11):
                    print(str(i) + " -> " + table_map.get(i))

                selection = int(input("-> "))
                query = "SELECT * FROM " + table_map.get(selection)
                db_cursor.execute(query)
                db.commit()

            # INSERTION
            if selection == 2:
                print("TABLES AVAILABLE")
                for i in range(1, 11):
                    print(str(i) + " -> " + table_map.get(i))

                print("Select table to insert to")
                selection = int(input("-> "))

                query = query_map.get(field_map.get(table_map.get(selection)))

                print("Select insertion method")
                print("1 -> FILE ENTRY")
                print("2 -> PROMPT ENTRY")

                option = int(input("-> "))

                # FILE ENTRY
                if option == 1:
                    print("Enter the absolute path of the file: ")
                    file_name = str(input("-> "))

                    file = open(file_name, 'r')
                    data_file = file.read()
                    file.close()

                    data_commands = sql_file.split()

                    for command in sql_commands:
                        data_tuple = tuple(command)
                        try:
                            db_cursor.execute(command,
                                              data_tuple)
                        except:
                            print("Command skipped")

                    db.commit()

                if option == 2:
                    print("Enter the field values when prompted")

                    data = []

                    for field in prompt_map.get(selection):
                        inp = str(input(field + " -> "))
                        data.append(inp)

                    data_tuple = tuple(data)

                    db_cursor.execute(query,
                                      data_tuple)

                    db.commit()

            # UPDATE/DELETION
            if selection == 3:
                print("TABLES AVAILABLE")
                for i in range(1, 11):
                    print(str(i) + " -> " + table_map.get(i))

                print("Select table to update/delete to")
                selection = int(input("-> "))

                print("1 -> UPDATE")
                print("2 -> DELETE")
                mode = int(input("-> "))

                # UPDATE
                if mode == 1:
                    db_cursor.execute("SELECT * FROM " + table_map.get(selection))

                    for row in db_cursor:
                        print(row)

                    inp = str(input("Select ID/Name to DELETE"))

                    if table_map.get(selection) == "artist" or table_map.get(selection) == "collection":

                        query = "SELECT * FROM " + table_map.get(selection) + " WHERE name=" + str(inp)
                        db_cursor.execute(query)

                        index = 0
                        for field in field_map.get(table_map.get(selection)):
                            print(field + " old value -> " + db_cursor.fetchone()[index])
                            index += 1

                        index = 1
                        print("SELECT FIELD TO UPDATE")
                        for field in field_map.get(table_map.get(selection)):
                            print(str(index) + " -> " + field)
                            index += 1

                        option = int(input("-> "))

                        change = str(input("New value for " + field_map.get(table_map.get(selection))[option - 1] + " -> "))

                        query = "UPDATE " + table_map.get(selection) + " SET " + field_map.get(table_map.get(selection))[option - 1] + "=" + change + " WHERE name=" + inp

                        try:
                            db_cursor.execute(query)
                        except:
                            print("Update failed!")

                    else:

                        query = "SELECT * FROM " + table_map.get(selection) + " WHERE id_no=" + str(inp)
                        db_cursor.execute(query)

                        index = 0
                        for field in field_map.get(table_map.get(selection)):
                            print(field + " old value -> " + db_cursor.fetchone()[index])
                            index += 1

                        index = 1
                        print("SELECT FIELD TO UPDATE")
                        for field in field_map.get(table_map.get(selection)):
                            print(str(index) + " -> " + field)
                            index += 1

                        option = int(input("-> "))

                        change = str(input("New value for " + field_map.get(table_map.get(selection))[option - 1] + " -> "))

                        query = "UPDATE " + table_map.get(selection) + " SET " + field_map.get(table_map.get(selection))[option - 1] + "=" + change + " WHERE id_no=" + inp

                        try:
                            db_cursor.execute(query)
                        except:
                            print("Update failed!")

                # DELETE
                if mode == 2:
                    db_cursor.execute("SELECT * FROM " + table_map.get(selection))

                    for row in db_cursor:
                        print(row)

                    inp = str(input("Select ID/Name to DELETE"))

                    if table_map.get(selection) == "artist" or table_map.get(selection) == "collection":
                        try:
                            db_cursor.execute(
                                "DELETE FROM " + table_map.get(selection) + " WHERE name=" + str(inp)
                            )
                        except:
                            print("Could not delete")
                    else:
                        try:
                            db_cursor.execute(
                                "DELETE FROM " + table_map.get(selection) + " WHERE id_no=" + str(inp)
                            )
                        except:
                            print("Could not delete")

        if response_body["account_type"] == "user":
            print("Welcome to the Museum")
            print("Which table would you like to look at?")

            for i in range(1, 11):
                print(str(i) + " -> " + table_map.get(i))

            selection = int(input("-> "))

            query = "SELECT * FROM " + table_map.get(selection)

            db_cursor.execute(query)

            for record in db_cursor:
                print(record)
                
if __name__ == "__main__":
    while True:
        main()
