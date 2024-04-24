import React, { useState } from 'react';
import axios from 'axios';
import { Button, Form } from 'react-bootstrap';

const BlockchainApp = () => {
  const [number, setNumber] = useState(null);
  const [inputValue, setInputValue] = useState('');

  const handleGetNumber = async () => {
    try {
      const response = await axios.get('http://34.201.37.125:3001/number');
      console.log('Response:', response);
      setNumber(response.data.number);
    } catch (error) {
      console.error('Error fetching number:', error);
    }
  };

  const handleSetNumber = async () => {
    try {
      await axios.post('http://34.201.37.125:3001/number', { number: inputValue });
      console.log('Number set successfully:', inputValue);
      setInputValue('');
      handleGetNumber();
    } catch (error) {
      console.error('Error setting number:', error);
    }
  };

  return (
    <div>
      <h1>Blockchain App</h1>
      <Button onClick={handleGetNumber}>Get Number</Button>
      {number !== null && <p>Number: {number}</p>}
      <Form.Group controlId="formNumber">
        <Form.Control
          type="text"
          placeholder="Enter a number"
          value={inputValue}
          onChange={(e) => setInputValue(e.target.value)}
        />
      </Form.Group>
      <Button onClick={handleSetNumber}>Set Number</Button>
    </div>
  );
};

export default BlockchainApp;
