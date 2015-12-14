#define scoring
///scoring()
if global.gameon
{
    var bar = o_bar.y,
        m = 0
    if bar <= 150
    {
        m = 0
    }   
    if bar <= 144
    {
        m = 1
    }    
    if bar <= 129
    {
        m = 2
    }    
    if bar <= 114
    {    
        m = 3
    }    
    if bar <= 99
    {
        m = 4
    }    
    if bar <= 84
    {    
        m = 5
    }    
    if bar <= 69
    {
        m = 6
    }    
    if bar <= 54
    {    
        m = 7
    }   
    if bar <= 46
    {    
        m = 8
    }    
    if bar <= 39
    {    
        m = 9
    }   
    if bar <= 32
    {    
        m = 10
    }    
    if bar <= 28
    {    
        m = 11
    }    
    if bar <= 16
    {    
        m = 12
    }    
      
    tick = baseScore*m
        
    global.scr += tick
}

#define score_load
///score_load()
ini_open('sav.ini')
global.hscr = ini_read_real('score', 'hscr', 0)
ini_close()

#define score_save
///score_save()
if global.scr > global.hscr
{
    ini_open('sav.ini')
    ini_write_real('score', 'hscr', global.scr)
    ini_close()
}
#define score_purge
///score_purge

ini_open('sav.ini')
ini_write_real('score', 'hscr', 0)
ini_close()

global.hscr = 0
