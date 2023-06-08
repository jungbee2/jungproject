import React from 'react';
import '../App.css';
import titleImg from '../image/3.jpg';

function Title(props) {
    return (
        <div>
            <img src={titleImg} alt='이미지' width={100} height={100}/>
            <br/>
            <b style={{fontSize:'20px',color:'green'}}>React & SpringBoot Project</b>
        </div>
    );
}

export default Title;<h1>Title</h1>