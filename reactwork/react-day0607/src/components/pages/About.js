import React from 'react';
import { useParams } from 'react-router-dom';

function About(props) {

    const {name} = useParams(); //RouteMain : name
    return (
        <div>
            <h3>안녕하세요. 제이름은 {name==null?'쌍용교육':name}입니다.</h3>
        </div>
    );
}

export default About;