<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personalized Greeting App</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #app-container {
            text-align: center;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }

        input, select, button {
            margin-bottom: 20px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        #greetingOutput {
            margin-top: 30px;
            font-size: 1.2em;
            color: #333;
        }
    </style>
</head>
<body>

    <div id="app-container">
        <h1>Personalized Greeting App</h1>

        <form id="greetingForm">
            <label for="name">Your Name:</label>
            <input type="text" id="name" required>

            <label for="greetingStyle">Select Greeting Style:</label>
            <select id="greetingStyle" required>
                <option value="formal">Formal</option>
                <option value="informal">Informal</option>
            </select>

            <button type="button" onclick="generateGreeting()">Generate Greeting</button>
        </form>

        <div id="greetingOutput"></div>
    </div>

    <script>
        function generateGreeting() {
            const nameInput = document.getElementById('name');
            const greetingStyleInput = document.getElementById('greetingStyle');
            const greetingOutput = document.getElementById('greetingOutput');

            const name = nameInput.value.trim();
            const greetingStyle = greetingStyleInput.value;

            if (name !== '') {
                let greeting;

                if (greetingStyle === 'formal') {
                    greeting = `Dear ${name}, we appreciate your presence.`;
                } else {
                    greeting = `Hi ${name}! Welcome and have a great time.`;
                }

                greetingOutput.textContent = greeting;
            } else {
                alert('Please enter your name before generating the greeting.');
            }
        }
    </script>

</body>
</html>

