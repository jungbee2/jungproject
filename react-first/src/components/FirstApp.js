
import React from "react";
import './Mystyle.css';
const FirstApp=()=>{

    return (
        <div>
            <h2 className='line'>First App Component!!!</h2>
            <div style={
                {
                    color:'green',
                    marginLeft:'100px',
                    fontSize:'25px'
                }
            }>
                안녕 반갑다!!!
            </div>
        </div>
    )

}

export default FirstApp;