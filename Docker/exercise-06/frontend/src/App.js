import React, { useState, useEffect } from "react";
import "./App.css";

function App() {
	const [message, setMessage] = useState("");

	useEffect(() => {
		fetchData();
	}, []);

	const fetchData = async () => {
		try {
			const response = await fetch(process.env.REACT_APP_URL);
			const jsonData = await response.json();
			setMessage(jsonData.content);
		} catch (error) {
			console.error("Error fetching data:", error);
		}
	};

	return (
		<div className="App">
			<header className="App-header">
				<p>{message}</p>
			</header>
		</div>
	);
}

export default App;
