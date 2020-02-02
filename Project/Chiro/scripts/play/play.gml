/// @param sound
///play(snd)

enum snd { burn,crack,bell,cry,error,good,punch,relief,scream,thanks,whoosh,finish,long,chose,select,next,more };

var sound = argument0;
var sound_id;

switch(sound)
{
    case snd.burn:
        sound_id = choose(
            Burn1_Rebo,
            Burn1_Emi,
            Burn1_Gri,
            Burn1_Max,
            Burn1_Reg,
            Burn2_Rebo,
            Burn2_Emi,
            Burn2_Gri,
            Burn2_Max,
            Burn2_Reg,
            Burn3_Emi,
            Burn3_Rebo
        );
    break;
    case snd.crack:
        sound_id = choose(
            Crack1,
            Crack2,
            Crack3,
            Crack4,
            Crack5
        );
    break;
    case snd.bell:
        sound_id = choose(
            Bell1,
            Bell2
        );
    break;
    case snd.error:
        sound_id = choose(
            Error
        );
    break;
    case snd.good:
        sound_id = choose(
            Good
        );
    break;
    case snd.punch:
        sound_id = choose(
            Punch1,
            Punch2,
            Punch3,
            Punch4,
            Punch5,
            Punch6
        );
    break;
    case snd.relief:
        sound_id = choose(
            Relief1_Rebo,
            Relief2_Rebo/*,
            Relief1_Reg,
            Relief2_Reg,
            Relief1_Gri,
            Relief2_Gri,
            Relief1_Emi,
            Relief2_Emi*/
        );
    break;
    case snd.scream:
        sound_id = choose(
            /*Scream1_Emi,
            Scream2_Emi,
            Scream3_Emi,
            Scream1_Reg,
            Scream2_Reg,
            Scream3_Reg,
            Scream1_Gri,
            Scream2_Gri,
            Scream3_Gri,*/
            Scream1_Rebo,
            Scream2_Rebo,
            Scream3_Rebo/*,
            Scream1_Meme,
            Scream2_Meme*/
        );
    break;
    case snd.thanks:
        sound_id = choose(
            ThanksDoc_Max,
            ThanksDoc_Rebo,
            /*ThanksDoc_Emi,
            ThanksDoc_Gri,
            ThanksDoc_Reg*/
        );
    break;
    case snd.whoosh:
        sound_id = choose(
            Whoosh1, 
            Whoosh2, 
            Whoosh3, 
            Whoosh4
        );
    break;
    case snd.finish:
        sound_id = Finish;
    break;
    case snd.long:
        sound_id = LongShout;
    break;
    case snd.chose:
        sound_id = ChooseOption;
    break;
    case snd.select:
        sound_id = Pencil;
    break;
    case snd.next:
        sound_id = Next;
    break;
    case snd.more:
        sound_id = MoreTime;
    break;
}

audio_play_sound(sound_id, irandom_range(0, 99), false);