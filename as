body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-align: center;
  background: 
              url('Images/bg/bground.JPG') no-repeat center center fixed;
  background-size: cover;
  margin: 0;
  padding: 0;
}

h1 {
  position: relative;
  background-color: #00796b;
  color: white;
  padding: 20px 0;
  margin: 0;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);

  /* New animation */
  animation: wiggle 3s infinite ease-in-out;
}

/* 🐞 little bug crawling on title */
h1::after {
  content: "🐞";
  position: absolute;
  left: -40px;
  top: 50%;
  transform: translateY(-50%);
  font-size: 24px;
  animation: bugWalk 12s linear infinite;
}

/* Wiggle effect for title */
@keyframes wiggle {
  0%, 100% { transform: rotate(0deg); }
  25% { transform: rotate(1deg); }
  50% { transform: rotate(-1deg); }
  75% { transform: rotate(1deg); }
}

/* Bug walking animation */
@keyframes bugWalk {
  0% { left: -40px; transform: translateY(-50%) scaleX(1); }
  45% { left: calc(100% + 10px); transform: translateY(-50%) scaleX(1); }
  55% { left: calc(100% + 10px); transform: translateY(-50%) scaleX(-1); }
  100% { left: -40px; transform: translateY(-50%) scaleX(-1); }
}

.hidden { display: none; }

.game-container {
  margin: 30px auto;
  max-width: 600px;
  background-color: rgba(255, 255, 255, 0.9); /* glass effect */
  padding: 20px;
  border-radius: 20px;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
  backdrop-filter: blur(6px);
}

.insect-img {
  max-width: 100%;
  border: 6px solid #00796b;
  border-radius: 15px;
  margin-top: 10px;
  opacity: 0;
  transform: scale(0.95);
  transition: opacity 0.6s ease, transform 0.6s ease;
}
.insect-img.show {
  opacity: 1;
  transform: scale(1);
}

.buttons {
  margin-top: 25px;
  display: flex;
  justify-content: center;
  gap: 20px;
}

button {
  padding: 15px 30px;
  font-size: 20px;
  border: none;
  border-radius: 12px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.friend { background-color: #4CAF50; color: white; }
.friend:hover { background-color: #388e3c; }
.pest { background-color: #f44336; color: white; }
.pest:hover { background-color: #d32f2f; }

#score, #lives, #progress {
  font-size: 22px;
  margin: 10px;
  color: #333;
}
#lives { color: #e53935; }

#insect-name {
  font-size: 24px;
  font-weight: bold;
  margin-top: 10px;
  color: #00695c;
}

#feedback {
  font-size: 18px;
  margin-top: 20px;
  padding: 10px;
  background-color: #eeeeee;
  border-radius: 10px;
  max-width: 500px;
  margin-left: auto;
  margin-right: auto;
}
#feedback.correct { color: green; font-weight: bold; }
#feedback.wrong {
  color: red;
  font-weight: bold;
  animation: shake 0.4s;
}
@keyframes shake {
  0% { transform: translateX(0); }
  20% { transform: translateX(-8px); }
  40% { transform: translateX(8px); }
  60% { transform: translateX(-8px); }
  80% { transform: translateX(8px); }
  100% { transform: translateX(0); }
}

#start-screen, #end-screen { margin-top: 60px; }

#start-screen button, #end-screen button {
  background-color: #00796b;
  color: white;
  padding: 15px 30px;
  font-size: 22px;
  border: none;
  border-radius: 12px;
  cursor: pointer;
  margin: 10px;
}
#start-screen button:hover, #end-screen button:hover { background-color: #004d40; }

#final-score {
  font-size: 26px;
  margin-bottom: 20px;
  color: #444;
}

#next-btn {
  margin-top: 20px;
  padding: 12px 24px;
  font-size: 18px;
  background-color: #0288d1;
  color: white;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}
#next-btn:hover { background-color: #0277bd; }
