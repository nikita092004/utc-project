from flask import Flask, request, render_template, redirect, url_for, make_response
import mysql.connector
import urllib.parse

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("login.html")

@app.route("/login", methods=["POST"])
def login():
    name = request.form.get("name")
    email = request.form.get("email")
    phone = request.form.get("phone")

    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="project_2"
    )
    cursor = conn.cursor()
    cursor.execute("INSERT INTO Participants (Name, Email, Phone) VALUES (%s, %s, %s)", (name, email, phone))
    conn.commit()
    conn.close()

    resp = make_response(redirect(url_for("quiz")))
    resp.set_cookie("email", email)
    return resp

@app.route("/quiz")
def quiz():
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="project_2"
    )
    cursor = conn.cursor()
    cursor.execute("SELECT q_no, question, option_A, option_B, option_C, option_D FROM Quiz")
    questions = cursor.fetchall()
    conn.close()

    return render_template("quiz.html", questions=questions)

@app.route("/submit_quiz", methods=["POST"])
def submit_quiz():
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="project_2"
    )
    cursor = conn.cursor()
    cursor.execute("SELECT q_no, correct_option FROM Quiz")
    correct_answers = dict(cursor.fetchall())

    score = 0
    for q_no, correct_option in correct_answers.items():
        user_answer = request.form.get(f"q{q_no}")
        if user_answer == correct_option:
            score += 1
        cursor.execute("INSERT INTO QuizResponses (question, answer) VALUES (%s, %s)", (q_no, user_answer))

    email = request.cookies.get('email')
    cursor.execute("UPDATE Participants SET Score = %s WHERE Email = %s", (score, email))

    conn.commit()
    conn.close()

    return redirect(url_for("result", score=score))

@app.route("/result")
def result():
    score = request.args.get("score", 0)
    return render_template("result.html", score=score)

if __name__ == "__main__":
    app.run(port=8000)
