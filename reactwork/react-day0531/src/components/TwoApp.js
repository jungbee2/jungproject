import React, { useState } from 'react';
import '../App.css';
//이미지 5개
import img1 from '../image/01.png';
import img2 from '../image/02.png';
import img3 from '../image/03.png';
import img4 from '../image/04.png';
import img5 from '../image/05.png';

function TwoApp(props) {

    const [hp1,setHp1]=useState('02');
    const [hp2,setHp2]=useState('1234');
    const [hp3,setHp3]=useState('5678');
    const [photo,setPhoto]= useState(1);

    const changeHp1=(e)=>{
        setHp1(e.target.value);
    }

    const changeHp2=(e)=>{
        setHp2(e.target.value);
    }

    const changeHp3=(e)=>{
        setHp3(e.target.value);
    }

    const changePhoto=(e)=>{
        setPhoto(Number(e.target.value));
    }

    return (
        <div>
            <h2 className='alert alert-info'>TwoApp입니다</h2> 
            <div className='form-inline'>
                <select className='form-control' style={{width:'70px'}} onChange={changeHp1}>
                    <option value='02'>02</option>
                    <option value='010'>010</option>
                    <option value='017'>017</option>
                    <option value='019'>019</option>
                </select>
                <b>-</b>
                <input type='text' maxLength='4' className='form-control' style={{width:'100px'}} 
                defaultValue={hp2}  onKeyUp={changeHp2}/>
                <b>-</b>
                <input type='text' maxLength='4' className='form-control' style={{width:'100px'}} 
                defaultValue={hp3} onKeyDown={changeHp3}/>
            
                <b style={{marginLeft:'100px'}}>이미지선택: </b>
                <select className='form-control' style={{width:'200px'}} onChange={changePhoto}>
                    <option value="1">재승</option>
                    <option value="2">영민</option>
                    <option value="3">슬기</option>
                    <option value="4">혜원</option>
                    <option value="5">규리</option>
                </select>
            </div>

            <br/><br/>
            <h1>{hp1}-{hp2}-{hp3}</h1>
            <img src={photo===1?img1:photo===2?img2:photo===3?img3:photo===4?img4:img5} className='photo' alt='이미지선택'/>
        </div>
    );
}

export default TwoApp;