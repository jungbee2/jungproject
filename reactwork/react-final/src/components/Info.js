import React from 'react';
import '../App.css';
import InfoImg from '../image/2.jpg';

function Info(props) {
    return (
        <div>
          <img src={InfoImg} alt='이미지' width={200} height={100}/>
          <br/><br/>
        </div>
    );
}

export default Info;<h1>Info</h1>