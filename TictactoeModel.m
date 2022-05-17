//
//  TictactoeModel.m
//  Tictactoe
//
//  Created by zack on 4/11/22.
//

#import "TictactoeModel.h"
@interface TictactoeModel ()
@property (nonatomic) NSMutableArray* data;
@property (nonatomic) int lastTic;
@property (nonatomic) int currentPlayer;

@end



@implementation TictactoeModel

-(instancetype)init {
    self = [super init];
    _data = [[NSMutableArray alloc] init];
    for(int i = 0; i < 9; i++) {
        [_data addObject:@(Empty)];
    }
    _lastTic = 0; // 0 means circle, 1 is check
    _currentPlayer = 0; // 0 is first player, 1 is second
    return self;
}

-(void) placeTicWithRow:(NSInteger) row withCol:(NSInteger) col{
    //TODO check row and col if it's valid
    NSInteger index = row * 3 + col;
    self.data[index] = [[NSNumber alloc] initWithInt:self.lastTic];
    self.lastTic = !self.lastTic;
    self.currentPlayer = !self.currentPlayer;
}

-(Boolean) checkIfWin {
    // check rows
    Boolean result = false;
    for (int i = 0; i < 3; i++) {
        if(self.data[i*3 + i] == self.data[i*3 + i+1] && self.data[i*3 + i+2]) {
            result = true;
            return result;
        }
    }
    // check colum
    result = false;
    for (int i = 0; i < 3; i++) {
        if(self.data[i] == self.data[i  + 3] && self.data[i + 6]) {
            result = true;
            return result;
        }
    }
    
    // check cross
    result = false;
   
    if((self.data[0] == self.data[4] ==  self.data[8]) ||
       (self.data[2] == self.data[4] ==  self.data[6])) {
        result = true;
        return result;
    }
    
    
    return result;
}

@end
