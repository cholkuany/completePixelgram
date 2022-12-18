import Foundation

class MockPostData {
    
    func mockPostData() -> Data {
        
        let dataString : String = """
        {
          "content": [
            {
              "createdOn": "2022-08-22T03:54:29.335+00:00",
              "id": 13,
              "author": {
                "id": 13,
                "username": "billybob1",
                "profileImageUrl": null
              },
              "message": "(post by Billy Bob)",
              "imageUrl": null,
              "comments": {
                "content": [],
                "pageable": {
                  "sort": {
                    "sorted": true,
                    "unsorted": false,
                    "empty": false
                  },
                  "pageNumber": 0,
                  "pageSize": 5,
                  "offset": 0,
                  "paged": true,
                  "unpaged": false
                },
                "last": true,
                "totalElements": 0,
                "totalPages": 0,
                "sort": {
                  "sorted": true,
                  "unsorted": false,
                  "empty": false
                },
                "numberOfElements": 0,
                "first": true,
                "size": 5,
                "number": 0,
                "empty": true
              },
              "likeCount": 4,
              "hasLiked": false
            },
            {
              "createdOn": "2022-08-22T03:54:29.335+00:00",
              "id": 12,
              "author": {
                "id": 12,
                "username": "palindrome",
                "profileImageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlEcVP8b7c0-uTajcfkg9wnfeykMVHoAdGAl012C8geV63IiPN8uN1RW0tb4WLd94mXyQ&usqp=CAU"
              },
              "message": "Which way is it spinning?",
              "imageUrl": "https://assets.newatlas.com/dims4/default/3861a2d/2147483647/strip/true/crop/600x338+0+0/resize/600x338!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F3f%2F24%2F0764f2024eb8b3e46c0c0e6c4c7e%2Fillusion-2.gif",
              "comments": {
                "content": [],
                "pageable": {
                  "sort": {
                    "sorted": true,
                    "unsorted": false,
                    "empty": false
                  },
                  "pageNumber": 0,
                  "pageSize": 5,
                  "offset": 0,
                  "paged": true,
                  "unpaged": false
                },
                "last": true,
                "totalElements": 0,
                "totalPages": 0,
                "sort": {
                  "sorted": true,
                  "unsorted": false,
                  "empty": false
                },
                "numberOfElements": 0,
                "first": true,
                "size": 5,
                "number": 0,
                "empty": true
              },
              "likeCount": 6,
              "hasLiked": false
            },
            {
              "createdOn": "2022-08-22T03:54:29.334+00:00",
              "id": 11,
              "author": {
                "id": 11,
                "username": "ymca_the_m_is_silent",
                "profileImageUrl": "https://hawaiianpoolbuilders.com/wp-content/uploads/2018/12/pool-banner-731x344.jpg"
              },
              "message": "Guess where I am part 5.",
              "imageUrl": "https://images.unsplash.com/photo-1625685218928-84b31dc343fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1234&q=80",
              "comments": {
                "content": [
                  {
                    "createdOn": "2022-08-22T03:54:29.410+00:00",
                    "id": 57,
                    "postId": 11,
                    "author": {
                      "id": 1,
                      "username": "ruthful",
                      "profileImageUrl": "https://i.pinimg.com/originals/b2/46/eb/b246eb3dad6fc9d167886f64f72acf85.jpg"
                    },
                    "message": "comment H"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.406+00:00",
                    "id": 52,
                    "postId": 11,
                    "author": {
                      "id": 7,
                      "username": "gambler",
                      "profileImageUrl": "https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/lasvegas/strip_b86ddbea-3add-4995-b449-ac85d700b027.jpg"
                    },
                    "message": "comment I"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.391+00:00",
                    "id": 44,
                    "postId": 11,
                    "author": {
                      "id": 5,
                      "username": "sirdancepants",
                      "profileImageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-0gS3m96SRyp1fFVFiwcpG40rnFmslUm7wZNTbJLCVUavhtThQggC06BhFM2Nzq-XHlk&usqp=CAU"
                    },
                    "message": "comment Q"
                  }
                ],
                "pageable": {
                  "sort": {
                    "sorted": true,
                    "unsorted": false,
                    "empty": false
                  },
                  "pageNumber": 0,
                  "pageSize": 5,
                  "offset": 0,
                  "paged": true,
                  "unpaged": false
                },
                "last": true,
                "totalElements": 3,
                "totalPages": 1,
                "sort": {
                  "sorted": true,
                  "unsorted": false,
                  "empty": false
                },
                "numberOfElements": 3,
                "first": true,
                "size": 5,
                "number": 0,
                "empty": false
              },
              "likeCount": 5,
              "hasLiked": false
            },
            {
              "createdOn": "2022-08-22T03:54:29.333+00:00",
              "id": 10,
              "author": {
                "id": 10,
                "username": "dropthemike",
                "profileImageUrl": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Shure_mikrofon_55S.jpg"
              },
              "message": ":D",
              "imageUrl": "https://i.kym-cdn.com/photos/images/original/001/476/528/d03",
              "comments": {
                "content": [
                  {
                    "createdOn": "2022-08-22T03:54:29.432+00:00",
                    "id": 81,
                    "postId": 10,
                    "author": {
                      "id": 7,
                      "username": "gambler",
                      "profileImageUrl": "https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/lasvegas/strip_b86ddbea-3add-4995-b449-ac85d700b027.jpg"
                    },
                    "message": "comment X"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.429+00:00",
                    "id": 74,
                    "postId": 10,
                    "author": {
                      "id": 7,
                      "username": "gambler",
                      "profileImageUrl": "https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/lasvegas/strip_b86ddbea-3add-4995-b449-ac85d700b027.jpg"
                    },
                    "message": "comment G"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.391+00:00",
                    "id": 43,
                    "postId": 10,
                    "author": {
                      "id": 3,
                      "username": "officefan",
                      "profileImageUrl": "https://www.slashfilm.com/wp/wp-content/images/theoffice-stevecarell-no.jpg"
                    },
                    "message": "comment I"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.388+00:00",
                    "id": 35,
                    "postId": 10,
                    "author": {
                      "id": 10,
                      "username": "dropthemike",
                      "profileImageUrl": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Shure_mikrofon_55S.jpg"
                    },
                    "message": "comment G"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.377+00:00",
                    "id": 29,
                    "postId": 10,
                    "author": {
                      "id": 9,
                      "username": "memesarefunny",
                      "profileImageUrl": "https://pbs.twimg.com/profile_images/1258937747064094724/yGluEShZ_400x400.jpg"
                    },
                    "message": "comment O"
                  }
                ],
                "pageable": {
                  "sort": {
                    "sorted": true,
                    "unsorted": false,
                    "empty": false
                  },
                  "pageNumber": 0,
                  "pageSize": 5,
                  "offset": 0,
                  "paged": true,
                  "unpaged": false
                },
                "last": false,
                "totalElements": 8,
                "totalPages": 2,
                "sort": {
                  "sorted": true,
                  "unsorted": false,
                  "empty": false
                },
                "numberOfElements": 5,
                "first": true,
                "size": 5,
                "number": 0,
                "empty": false
              },
              "likeCount": 5,
              "hasLiked": false
            },
            {
              "createdOn": "2022-08-22T03:54:29.333+00:00",
              "id": 9,
              "author": {
                "id": 9,
                "username": "memesarefunny",
                "profileImageUrl": "https://pbs.twimg.com/profile_images/1258937747064094724/yGluEShZ_400x400.jpg"
              },
              "message": "art",
              "imageUrl": "https://lh3.googleusercontent.com/proxy/VUDaBC-QYZOpkOMeZqG8dpLgnupprN9EqJ1jk6_CplcJXhjbUZqLN6CpDdNoUjij7v6HSi3Zh3sLJDTBjCJyoggGRqTKF52eFqv9SiqtxxwZ6zx_QjftgsP_U880fOQUGtKzBQzPiIl41CZcnzX6UcqOZAJRe-uxk_BPrw",
              "comments": {
                "content": [
                  {
                    "createdOn": "2022-08-22T03:54:29.426+00:00",
                    "id": 68,
                    "postId": 9,
                    "author": {
                      "id": 11,
                      "username": "ymca_the_m_is_silent",
                      "profileImageUrl": "https://hawaiianpoolbuilders.com/wp-content/uploads/2018/12/pool-banner-731x344.jpg"
                    },
                    "message": "comment F"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.417+00:00",
                    "id": 65,
                    "postId": 9,
                    "author": {
                      "id": 1,
                      "username": "ruthful",
                      "profileImageUrl": "https://i.pinimg.com/originals/b2/46/eb/b246eb3dad6fc9d167886f64f72acf85.jpg"
                    },
                    "message": "comment F"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.413+00:00",
                    "id": 60,
                    "postId": 9,
                    "author": {
                      "id": 8,
                      "username": "ryenmarinaise",
                      "profileImageUrl": "https://indianakitchen.com/wp-content/uploads/2015/03/Ham-Sandwich.jpg"
                    },
                    "message": "comment Y"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.411+00:00",
                    "id": 58,
                    "postId": 9,
                    "author": {
                      "id": 10,
                      "username": "dropthemike",
                      "profileImageUrl": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Shure_mikrofon_55S.jpg"
                    },
                    "message": "comment H"
                  },
                  {
                    "createdOn": "2022-08-22T03:54:29.392+00:00",
                    "id": 47,
                    "postId": 9,
                    "author": {
                      "id": 9,
                      "username": "memesarefunny",
                      "profileImageUrl": "https://pbs.twimg.com/profile_images/1258937747064094724/yGluEShZ_400x400.jpg"
                    },
                    "message": "comment B"
                  }
                ],
                "pageable": {
                  "sort": {
                    "sorted": true,
                    "unsorted": false,
                    "empty": false
                  },
                  "pageNumber": 0,
                  "pageSize": 5,
                  "offset": 0,
                  "paged": true,
                  "unpaged": false
                },
                "last": false,
                "totalElements": 8,
                "totalPages": 2,
                "sort": {
                  "sorted": true,
                  "unsorted": false,
                  "empty": false
                },
                "numberOfElements": 5,
                "first": true,
                "size": 5,
                "number": 0,
                "empty": false
              },
              "likeCount": 7,
              "hasLiked": false
            }
          ],
          "pageable": {
            "sort": {
              "sorted": true,
              "unsorted": false,
              "empty": false
            },
            "pageNumber": 0,
            "pageSize": 5,
            "offset": 0,
            "paged": true,
            "unpaged": false
          },
          "last": false,
          "totalElements": 13,
          "totalPages": 3,
          "sort": {
            "sorted": true,
            "unsorted": false,
            "empty": false
          },
          "numberOfElements": 5,
          "first": true,
          "size": 5,
          "number": 0,
          "empty": false
        }
        """
        
        let data = Data(dataString.utf8)
        
        return data
    }
    
}
