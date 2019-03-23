import React, { Component } from 'react';
import logo from './img/traction-guest-logo.png';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Welcome to THE MAIN EVENT
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="self"
            rel="noopener noreferrer"
          >
            Scan your QR Code
          </a>
        </header>
      </div>
    );
  }
}

export default App;
