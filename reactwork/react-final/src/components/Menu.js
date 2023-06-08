import React from 'react';
import '../App.css';
import { NavLink } from 'react-router-dom';

function Menu(props) {
    return (
        <div>
            <ul className='mainmenu'>
                <li><NavLink to='/'>Home</NavLink></li>
                <li><NavLink to='/login/list'>Login</NavLink></li>
                <li><NavLink to='/member/list'>Member</NavLink></li>
                <li><NavLink to='/shop/list'>Shop</NavLink></li>
                <li><NavLink to='/board/list'>Board</NavLink></li>
                <li><NavLink to='/about/list'>About</NavLink></li>
            </ul>
        </div>
    );
}

export default Menu;