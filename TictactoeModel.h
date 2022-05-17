//
//  TictactoeModel.h
//  Tictactoe
//
//  Created by zack on 4/11/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum TictactoeStatus {
    Empty = -1 ,
    Circle = 0,
    Check = 1
};

@interface TictactoeModel : NSObject

-(void) placeTicWithRow:(NSInteger) row withCol:(NSInteger) col;
-(Boolean) checkIfWin;

@end

NS_ASSUME_NONNULL_END
