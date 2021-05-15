import React from "react";
import { Box, Grid, Avatar } from '@material-ui/core'
import "./style.scss"; 
import BookmarkBorderIcon from '@material-ui/icons/BookmarkBorder';
import FavoriteBorderIcon from '@material-ui/icons/FavoriteBorder';
// import "../../../public/instagram/"

const data = {
    stories :[
        {
            name: "name1", 
            img: "imgsrc", 
            newStory: true,
        }, 
        {
            name: "name2", 
            img: "imgsrc", 
            newStory: false,
        }, 
        {
            name: "name3", 
            img: "imgsrc", 
            newStory: true,
        }, 
    ], 
    content: [
        {
            name: "name1", 
            profileImg: "imgsrc", 
            post: "imgsrc",
            caption: "hello~~~",
            likes: 100, 
            newStory: true,
        }, 
        {
            name: "name2", 
            profileImg: "imgsrc", 
            post: "imgsrc",
            caption: "hello~~~",
            likes: 100, 
            newStory: false,
        }, 
        {
            name: "name3", 
            profileImg: "imgsrc", 
            post: "imgsrc",
            caption: "hello~~~",
            likes: 100, 
            newStory: true,
        }, 
    ]
}

const Instagram = (props) => {
    return (
        <div className="insta-wrapper">
            <div className="insta-heading">
                <div className="insta-title">Instagram</div>
                <div>
                    <img src="instagram/header-add.png" className="social-icons"/>
                    <img src="instagram/header-heart.png" className="social-icons"/>
                    <img src="instagram/header-send.png" className="social-icons"/>
                </div>
            </div>

            <div className="stories-list">
                {data.stories.map((item, index) => {
                        return (
                            <div className="stories-item">
                                <Avatar src={item.img} alt={item.name} className="stories"/>
                                <p>{item.name}</p>
                            </div>
                        ) 
                    })
                }
            </div>

            <hr/>
            
            <div className="insta-content">
                {data.content.map((item, index) => {
                    return (
                        <div className="content-wrapper">
                            <div className="content-header">
                                <Avatar src={item.img} alt={item.name} className="stories"/>
                                <div className="post-text">{item.name}</div>
                            </div>
                            <div className="insta-post">
                                <img src={item.post} alt="img" />
                            </div>
                            <div className="post-interaction">
                                <FavoriteBorderIcon/>
                                <BookmarkBorderIcon/>
                            </div>
                            <div className="post-text">{item.likes} likes</div>
                            <div className="post-description">
                                <span className="post-text">{item.name}</span>
                                <span>{item.caption}</span>
                            </div>
                        </div>
                    )
                })}
            </div>

            
            

        </div>
    )
}

export default Instagram