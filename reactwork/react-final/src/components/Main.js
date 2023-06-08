import React from 'react';
import '../App.css';
import mainImg1 from '../image/4.jpg';
import mainImg2 from '../image/5.jpg';
import mainImg3 from '../image/10.jpg';

function Main(props) {
    return (
        <div>
            <img src={mainImg1} alt='이미지1' width={300} height={300} />
            <img src={mainImg2} alt='이미지1' width={300} height={300} />
            <img src={mainImg3} alt='이미지1' width={300} height={300} />
        </div>
    );
}

export default Main;