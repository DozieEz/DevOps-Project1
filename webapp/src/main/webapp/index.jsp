<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Manager</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        button {
            cursor: pointer;
        }
    </style>
</head>
<body>

    <h1>Task Manager</h1>

    <form id="taskForm">
        <label for="task">Add Task:</label>
        <input type="text" id="task" required>
        <button type="submit">Add</button>
    </form>

    <ul id="taskList"></ul>

    <script>
        // JavaScript code for task management
        const taskForm = document.getElementById('taskForm');
        const taskInput = document.getElementById('task');
        const taskList = document.getElementById('taskList');

        taskForm.addEventListener('submit', function(event) {
            event.preventDefault();

            const taskText = taskInput.value.trim();

            if (taskText !== '') {
                addTask(taskText);
                taskInput.value = '';
            }
        });

        function addTask(taskText) {
            const li = document.createElement('li');
            li.textContent = taskText;

            const deleteButton = document.createElement('button');
            deleteButton.textContent = 'Delete';
            deleteButton.addEventListener('click', function() {
                li.remove();
            });

            li.appendChild(deleteButton);
            taskList.appendChild(li);
        }
    </script>

</body>
</html>

