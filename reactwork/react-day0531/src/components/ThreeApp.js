import React, { useState } from 'react';

function ThreeApp(props) {

    const[photo,setPhoto]=useState('../image2/11.png');

    const changePhoto=(e)=>{
        setPhoto(e.target.value);
    }

    return (
        <div>
            <h2 className='alert alert-info'>ThreeApp입니다</h2>
            <div style={{fontSize:'20px'}}>
                <label>
                    <input type='radio' name='photo' value='../image2/11.png' defaultChecked
                    onClick={changePhoto}/>이미지1
                    &nbsp; &nbsp;
                    <input type='radio' name='photo' value='../image2/12.png'
                    onClick={changePhoto}/>이미지2
                    &nbsp; &nbsp;
                    <input type='radio' name='photo' value='../image2/13.png'
                    onClick={changePhoto}/>이미지3
                    &nbsp; &nbsp;
                    <input type='radio' name='photo' value='../image2/14.png'
                    onClick={changePhoto}/>이미지4
                    &nbsp; &nbsp;
                    <input type='radio' name='photo' value='../image2/15.png'
                    onClick={changePhoto}/>이미지5
                    &nbsp; &nbsp;
                    <input type='radio' name='photo' value='../image2/16.png'
                    onClick={changePhoto}/>이미지6
                    &nbsp; &nbsp;
                </label>
                &nbsp; &nbsp;
            </div> 

            <img src={photo} alt='사진'/>
        </div>
    );
}

export default ThreeApp;