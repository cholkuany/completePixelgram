//
//  MockCommentData.swift
//  PixelgramTests
//
//  Created by admin on 8/24/22.
//

import Foundation

class MockCommentData {
    func mockCommentData1() -> Data{
        let dataString : String = """
        
        {
          "content": [
            {
              "createdOn": "2022-08-23T21:15:19.749+00:00",
              "id": 99,
              "postId": 1,
              "author": {
                "id": 19,
                "username": "test",
                "profileImageUrl": null
              },
              "message": "scroll"
            },
            {
              "createdOn": "2022-08-22T03:54:29.430+00:00",
              "id": 78,
              "postId": 1,
              "author": {
                "id": 10,
                "username": "dropthemike",
                "profileImageUrl": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Shure_mikrofon_55S.jpg"
              },
              "message": "comment Y"
            },
            {
              "createdOn": "2022-08-22T03:54:29.418+00:00",
              "id": 67,
              "postId": 1,
              "author": {
                "id": 9,
                "username": "memesarefunny",
                "profileImageUrl": "https://pbs.twimg.com/profile_images/1258937747064094724/yGluEShZ_400x400.jpg"
              },
              "message": "comment O"
            },
            {
              "createdOn": "2022-08-22T03:54:29.390+00:00",
              "id": 41,
              "postId": 1,
              "author": {
                "id": 7,
                "username": "gambler",
                "profileImageUrl": "https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/lasvegas/strip_b86ddbea-3add-4995-b449-ac85d700b027.jpg"
              },
              "message": "comment P"
            },
            {
              "createdOn": "2022-08-22T03:54:29.387+00:00",
              "id": 33,
              "postId": 1,
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
          "totalElements": 7,
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
        }
        
        """
        let data = Data(dataString.utf8)
        
        return data
    }
    
    func mockCommentData2() -> Data{
        let dataString : String = """
        {
          "content": [
            {
              "createdOn": "2022-08-23T21:15:19.749+00:00",
              "id": 99,
              "postId": 1,
              "author": {
                "id": 19,
                "username": "test",
                "profileImageUrl": null
              },
              "message": "scroll"
            },
            {
              "createdOn": "2022-08-22T03:54:29.430+00:00",
              "id": 78,
              "postId": 1,
              "author": {
                "id": 10,
                "username": "dropthemike",
                "profileImageUrl": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Shure_mikrofon_55S.jpg"
              },
              "message": "comment Y"
            },
            {
              "createdOn": "2022-08-22T03:54:29.418+00:00",
              "id": 67,
              "postId": 1,
              "author": {
                "id": 9,
                "username": "memesarefunny",
                "profileImageUrl": "https://pbs.twimg.com/profile_images/1258937747064094724/yGluEShZ_400x400.jpg"
              },
              "message": "comment O"
            },
            {
              "createdOn": "2022-08-22T03:54:29.390+00:00",
              "id": 41,
              "postId": 1,
              "author": {
                "id": 7,
                "username": "gambler",
                "profileImageUrl": "https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/lasvegas/strip_b86ddbea-3add-4995-b449-ac85d700b027.jpg"
              },
              "message": "comment P"
            },
            {
              "createdOn": "2022-08-22T03:54:29.387+00:00",
              "id": 33,
              "postId": 1,
              "author": {
                "id": 9,
                "username": "memesarefunny",
                "profileImageUrl": "https://pbs.twimg.com/profile_images/1258937747064094724/yGluEShZ_400x400.jpg"
              },
              "message": "comment B"
            },
            {
              "createdOn": "2022-08-22T03:54:29.359+00:00",
              "id": 11,
              "postId": 1,
              "author": {
                "id": 10,
                "username": "dropthemike",
                "profileImageUrl": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Shure_mikrofon_55S.jpg"
              },
              "message": "comment T"
            },
            {
              "createdOn": "2022-08-22T03:54:29.347+00:00",
              "id": 2,
              "postId": 1,
              "author": {
                "id": 4,
                "username": "starwarsfan",
                "profileImageUrl": "https://www.cnet.com/a/img/41Pn-v6oEkbVKHocW5poKmvqaPk=/940x0/2020/12/11/01a5b2d9-0c22-4dc6-8730-5ceea3d9c79b/the-mandalorian-14-din-grogu.jpg"
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
            "pageSize": 7,
            "offset": 0,
            "paged": true,
            "unpaged": false
          },
          "last": true,
          "totalElements": 7,
          "totalPages": 1,
          "sort": {
            "sorted": true,
            "unsorted": false,
            "empty": false
          },
          "numberOfElements": 7,
          "first": true,
          "size": 7,
          "number": 0,
          "empty": false
        }
        
        """
        let data = Data(dataString.utf8)
        
        return data
    }
    
}
