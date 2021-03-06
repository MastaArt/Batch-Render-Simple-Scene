/ *      
 [ I N F O ]    
 N A M E   =   B a t c h   R e n d e r   S i m p l e   S c e n e  
 V E R S I O N   =   1 . 0 . 1  
 A U T H O R   =   M a s t a M a n  
 D E V   =   h t t p s : / / 3 d g r o u n d . n e t  
 C L I E N T = S h e s t a k o v i c h  
 H E L P   =    
 [ 1 . 0 . 0 ]  
 *   I n i t i a l   r e l e a s e   =  
  
 [ 1 . 0 . 1 ]  
 *   C h a n g e d :   R e n d e r   o n l y   s e l e c t e d =  
  
 [ A B O U T ]  
  
  
 [ S C R I P T ]  
 * /  
  
 - -   F i l e P r o p e r t i e s   b a s e d   s e t t i n g s   s y s t e m  
 s t r u c t   ' $ '   (  
         f n   a d d   n   v   =   (  
                 r e t u r n   ( f i l e P r o p e r t i e s . a d d P r o p e r t y   # c u s t o m   n   v )  
         ) ,  
         f n   g e t   n   =   (  
                 i   =   f i l e P r o p e r t i e s . f i n d P r o p e r t y   # c u s t o m   n  
                 i f ( i   ! =   0 )   d o   (  
                         v   =   f i l e P r o p e r t i e s . g e t P r o p e r t y V a l u e   # c u s t o m   i  
                         i f ( v [ 1 ]   = =   " # " )   d o   r e t u r n   e x e c u t e ( v )  
                         r e t u r n   v  
                 )  
                 r e t u r n   u n d e f i n e d  
         ) ,  
         f n   d e l   n   =   (  
                 f i l e P r o p e r t i e s . d e l e t e P r o p e r t y   # c u s t o m   n  
         ) ,  
         f n   l i s t   t :   # f u l l   =   (  
                 p   =   f i l e P r o p e r t i e s . g e t N u m P r o p e r t i e s   # c u s t o m  
                 r e s   =   # ( )  
                 f o r   i   i n   1   t o   ( f i l e P r o p e r t i e s . g e t N u m P r o p e r t i e s   # c u s t o m )   d o   (  
                         n   =   f i l e P r o p e r t i e s . g e t P r o p e r t y N a m e   # c u s t o m   i  
                         v   =   f i l e P r o p e r t i e s . g e t P r o p e r t y V a l u e   # c u s t o m   i  
                          
                         c a s e   t   o f   (  
                                 # n a m e s :   a p p e n d   r e s   n  
                                 # v a l u e s :   a p p e n d   r e s   v  
                                 d e f a u l t :   a p p e n d   r e s   # ( n ,   v )  
                         )  
                 )  
                  
                 r e t u r n   r e s  
         )  
 )  
  
 t r y ( c l o s e R o l l o u t F l o a t e r   f B a t c h R e n d e r S i m p l e S c e n e )   c a t c h ( )  
 g l o b a l   f B a t c h R e n d e r S i m p l e S c e n e   =   n e w R o l l o u t F l o a t e r   " B a t c h   R e n d e r   S i m p l e   S c e n e "   2 8 0   4 0 0  
  
 r o l l o u t   _ r S t e p M a i n B R S S     " M a i n "   ( 	 	 	  
 	 g r o u p   " R e p l a c e   M a t e r i a l   O n   O b j e c t "   (  
 	 	 e d i t t e x t   e d t R e p l a c e M a t e r i a l O b j e c t N a m e   " "   a l i g n :   # l e f t   t e x t :   " f a b r i c k _ * "  
 	 	 l a b e l   l b l I n f o   " M a t e r i a l s   m u s t   b e   a p p l i e d   t o   t h e   \ n G e o S p h e r e s / S p h e r e s   i n   c u r r e n t   s c e n e ! "   a l i g n :   # l e f t   h e i g h t :   3 0  
 	 )  
         g r o u p   " S a v e   O u t p u t   R e n d e r s "   (  
                 e d i t t e x t   e d t B a t c h R e n d e r P a t h   " "   r e a d o n l y :   t r u e   a c r o s s :   2   a l i g n :   # l e f t   f i e l d w i d t h :   1 9 5  
                 b u t t o n   b t n S e t B a t c h R e n d e r P a t h   " . . . "   w i d t h :   3 5     a l i g n :   # r i g h t   o f f s e t :   [ 0 ,   - 3 ]  
         )  
          
         b u t t o n   b t n S t a r t R e n d e r   " S t a r t   B a t c h   R e n d e r "   h e i g h t :   3 5   w i d t h :   2 4 0   o f f s e t :   [ 0 ,   1 0 ]  
 	  
 	 f n   g e t S a v e D i r   t y p e :   " j p g "   =   (  
                 t y p e   =   ( t o U p p e r   t y p e )   + "   ( * . "   +   t y p e   +   " ) | * . "   +   t y p e  
                 f   =   g e t S a v e F i l e N a m e   f i l e n a m e :   " D O   N O T   C H A N G E   N A M E "   c a p t i o n : " S a v e   F i l e "   t y p e s :   t y p e  
                 i f ( f   = =   u n d e f i n e d )   d o   r e t u r n   f  
                  
                 p   =   g e t F i l e N a m e P a t h   f  
  
                 r e t u r n   p  
         )  
 	  
 	 f n   l o a d A d d i t i o n a l S e t t i n g s   =   (  
                 s   =   ' $ ' ( )  
                 p 2   =   s . g e t   " O U T _ R E N D E R _ P A T H "  
                 i f ( p 2   ! =   u n d e f i n e d   a n d   d o e s F i l e E x i s t   p 2 )   d o   e d t B a t c h R e n d e r P a t h . t e x t   =   p 2  
         )  
 	  
 	 f n   i s C o r o n a   =   (  
                 r   =   r e n d e r e r s . c u r r e n t  
                 i f ( m a t c h P a t t e r n   ( r   a s   s t r i n g )   p a t t e r n :   " * C o r o n a R e n d e r e r * " )   d o   r e t u r n   r  
                 r e t u r n   u n d e f i n e d  
         )  
 	  
 	 f n   f o r c e U n g r o u p   o   =   (  
                 o   =   o   a s   a r r a y  
                 i f ( o . c o u n t   = =   0 )   d o   r e t u r n   f a l s e  
  
                 f o r   i   i n   o   w h e r e   i s G r o u p H e a d   i   a n d   i s V a l i d N o d e   i   d o   e x p l o d e G r o u p   i  
         )  
          
         f n   f o r c e D e l e t e O b j e c t s   o   =   (  
                 o   =   o   a s   a r r a y  
                 i f ( o . c o u n t   = =   0 )   d o   r e t u r n   f a l s e  
  
                 o o   =   f o r   i   i n   o   w h e r e   i s V a l i d N o d e   i   a n d   n o t   i s D e l e t e d   i   c o l l e c t   i  
                 d e l e t e   o o  
         )  
 	  
 	 f n   g e t C e n t e r O f M o d e l   o b j s   =   (  
 	 	 f o r   i   i n   o b j s   w h e r e   i s G r o u p H e a d   i   d o   r e t u r n   i . p o s  
 	 	 r e t u r n   o b j s . c e n t e r  
 	 )  
 	  
 	 f n   s e t u p R e n d e r   f i l e N a m e   i s S e l e c t e d M o d e :   f a l s e   =   (  
 	 	 c r   =   i s C o r o n a ( )  
 	 	  
 	 	 d e l e t e F i l e   f i l e N a m e  
 	 	  
 	 	 i f ( r e n d e r S c e n e D i a l o g . i s O p e n ( ) )   d o   r e n d e r S c e n e D i a l o g . c l o s e ( )   	 	  
 	 	 	  
 	 	 r e n d S a v e F i l e   =   t r u e  
 	 	 r e n d O u t p u t F i l e n a m e   =   f i l e N a m e  
 	 	 r e n d T i m e T y p e   =   1  
 	 	 r e n d U s e A c t i v e V i e w   =   t r u e  
 	 	 c r . r e n d e r S e l e c t e d _ m o d e   =   i f ( i s S e l e c t e d M o d e )   t h e n   1   e l s e   0  
 	 	 c r . v f b _ c l e a r B e t w e e n R e n d e r s   =   t r u e  
 	 	 r e M g r   =   m a x O p s . g e t C u r R e n d e r E l e m e n t M g r ( )  
 	 	 r e M g r . S e t E l e m e n t s A c t i v e   f a l s e  
  
 	 	 r e n d e r S c e n e D i a l o g . u p d a t e ( )  
 	 )  
 	  
 	 o n   _ r S t e p M a i n B R S S   o p e n   d o   (  
 	 	 l o a d A d d i t i o n a l S e t t i n g s ( )  
 	 )  
 	 	  
 	 o n   b t n S e t B a t c h R e n d e r P a t h   p r e s s e d   d o   (  
                 p   =   g e t S a v e D i r   t y p e :   " p n g "  
                 i f ( p   = =   u n d e f i n e d )   d o   r e t u r n   f a l s e  
                  
                 ( ' $ ' ) . a d d   " O U T _ R E N D E R _ P A T H "   p  
                  
                 l o a d A d d i t i o n a l S e t t i n g s ( )  
         )  
 	 	  
 	 f n   b a t c h R e n d e r   c u r r e n t M o d e l   p t h   c a m N a m e   m a t N a m e   =   (  
 	 	 n   =   g e t F i l e N a m e F i l e   m a x F i l e N a m e  
 	 	 m a t N a m e   =   t r i m R i g h t   ( t r i m L e f t   m a t N a m e   " _ " )   " _ "  
 	 	 t m p   =   p t h   +   n   +   "   "   +   c a m N a m e   +   "   "   +   m a t N a m e   +   " . p n g " 	 	  
 	 	 s e t u p R e n d e r   t m p   i s S e l e c t e d M o d e :   t r u e  
 	 	  
 	 	 p r i n t   ( " R e n d e r   t h e :   "   +   t m p )  
 	 	 m a x   q u i c k   r e n d e r  
 	 )  
 	  
 	 f n   g e t F r a m e C a m e r a F r o m B a t c h R e n d e r   n   =   (  
 	 	 f o r   i d   i n   1   t o   b a t c h R e n d e r M g r . n u m V i e w s   d o   (  
 	 	 	 v   =   b a t c h R e n d e r M g r . G e t V i e w   i d  
 	 	 	 i f ( v . c a m e r a   = =   u n d e f i n e d )   d o   c o n t i n u e  
 	 	 	 i f ( v . c a m e r a . n a m e   = =   n )   d o   r e t u r n   v . s t a r t F r a m e 	  
 	 	 )  
 	 	  
 	 	 r e t u r n   0 f  
 	 )  
  
 	 o n   b t n S t a r t R e n d e r   p r e s s e d   d o   ( 	  
                 c r   =   i s C o r o n a ( )  
                 i f ( c r   = =   u n d e f i n e d )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   a s s i g n   C o r o n a   R e n d e r e r ! "   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 o b j e c t s N a m e   =   e d t R e p l a c e M a t e r i a l O b j e c t N a m e . t e x t  
 	 	 o b j s   =   t r y ( ( e x e c u t e   ( " $ "   +   o b j e c t s N a m e ) )   a s   a r r a y )   c a t c h ( # ( ) )  
 	 	 i f ( o b j s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   ( " N o t   f o u n d   o b j e c t s   i n   r e n d e r   s c e n e   w i t h   n a m e :   "   +   o b j e c t s N a m e   +   " ! " )   t i t l e :   " E r r o r ! "  
 	 	 c l e a r S e l e c t i o n ( )  
 	 	 s e l e c t   o b j s  
 	 	  
                 o r i g M a x F i l e   =   m a x F i l e P a t h   +   m a x F i l e N a m e 	 	  
 	 	 i f ( o r i g M a x F i l e   = =   " " )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   s a v e   t h e   s c e n e ! "   t i t l e :   " E r r o r ! "  
 	 	  
                 c h e c k F o r S a v e ( )  
 	 	  
 	 	 s   =   ( ' $ ' )              
                 p 2   =   s . g e t   " O U T _ R E N D E R _ P A T H "                  
                 i f ( p 2   = =   u n d e f i n e d   o r   n o t   d o e s F i l e E x i s t   p 2 )   d o   r e t u r n   m e s s a g e B o x   " P l e a s e   c h o o s e   S a v e   O u t p u t   R e n d e r   P a t h "   t i t l e :   " E r r o r ! "  
  
 	 	 - -   D e t e c t   m a t e r i a l s  
 	 	 m a t e r i a l s L i s t   =   f o r   i   i n   o b j e c t s   w h e r e   ( c l a s s O f   i   = =   G e o S p h e r e   o r   c l a s s O f   i   = =   S p h e r e )   a n d   i . m a t e r i a l   ! = u n d e f i n e d   c o l l e c t   i . m a t e r i a l  
 	 	 i f ( m a t e r i a l s L i s t . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   ( " N o t   f o u n d   m a t e r i a l s   i n   r e n d e r   s c e n e :   "   +   m a x F i l e N a m e   +   " \ " ! " )   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 c a m s   =   c a m e r a s   a s   a r r a y  
 	 	 i f ( c a m s . c o u n t   = =   0 )   d o   r e t u r n   m e s s a g e B o x   ( " N o t   f o u n d   c a m e r a s   i n   r e n d e r   s c e n e :   "   +   m a x F i l e N a m e   +   " \ " ! " )   t i t l e :   " E r r o r ! "  
 	 	  
 	 	 p r o g r e s s S t a r t   " I n   p r o c e s s . . . "  
                 e s c a p e E n a b l e   =   t r u e  
                 c l e a r L i s t e n e r ( )  
 	 	  
 	 	 - -   O p e n   L i s t e n e r  
 	 	 a c t i o n M a n . e x e c u t e A c t i o n   0   " 4 0 4 7 2 "  
 	 	 	 	  
 	 	 f o r   i   i n   1   t o   c a m s . c o u n t   d o   (  
 	 	 	 i f ( g e t P r o g r e s s C a n c e l ( )   = =   t r u e )   d o   e x i t 	  
 	 	 	 v i e w p o r t . s e t C a m e r a   c a m s [ i ]  
 	 	  
 	 	 	 f o r   m   i n   m a t e r i a l s L i s t   d o   (  
 	 	 	 	 i f ( g e t P r o g r e s s C a n c e l ( )   = =   t r u e )   d o   e x i t 	  
 	 	 	 	  
 	 	 	 	 - -   A p p e n d   m a t e r i a l  
 	 	 	 	 f o r   o   i n   o b j s   d o   o . m a t e r i a l   =   m  
 	 	 	 	 	  
 	 	 	 	 c a m N a m e   =   c a m s [ i ] . n a m e  
 	 	 	 	 m a t N a m e   =   m . n a m e  
 	 	 	 	  
 	 	 	 	 s t   =   g e t F r a m e C a m e r a F r o m B a t c h R e n d e r   c a m N a m e  
 	 	 	 	 s l i d e r T i m e   =   s t  
 	 	 	 	  
 	 	 	 	 b a t c h R e n d e r   c u r r e n t M o d e l   p 2   c a m N a m e   m a t N a m e  
 	 	 	 	  
 	 	 	 	 p r o g r e s s U p d a t e   ( 1 0 0   *   i   /   c a m s . c o u n t )  
 	 	 	 	 i f ( g e t P r o g r e s s C a n c e l ( )   = =   t r u e )   d o   e x i t 	  
 	 	 	 )  
 	 	 	  
 	 	 	 i f ( g e t P r o g r e s s C a n c e l ( )   = =   t r u e )   d o   e x i t 	  
 	 	 )  
 	 	  
 	 	 p r o g r e s s E n d ( )  
                  
 	 	 q   =   q u e r y B o x   " A l l   m a t e r i a l s   a r e   r e n d e r e d . \ n \ n D o   y o u   w a n t   t o   o p e n   t h e   f o l d e r   w i t h   r e n d e r s ? "   t i t l e :   " C o n f i r m ! " 	 	 	  
 	 	 i f ( q )   d o   r e t u r n     s h e l l L a u n c h   p 2   " "  
 	 )  
 )  
  
 r o l l o u t   _ r A b o u t B R S S   " A b o u t "   (  
         l a b e l   l b l N a m e   " "    
         l a b e l   l b l V e r   " "    
          
         l a b e l   l b l A u t h o r   " "   h e i g h t :   3 0  
         h y p e r l i n k   l b l C o p y   " "     a l i g n :   # c e n t e r  
          
         f n   g e t S c r i p t I n f o   s   r e l e a s e I n f o :   " "   =     (  
                 i f ( r e l e a s e I n f o   ! =   " " )   d o  
                 (  
                         r   =   g e t I N I S e t t i n g   s   r e l e a s e I n f o  
                         r e t u r n   r  
                 )  
  
                 v   =   g e t I N I S e t t i n g   s   " I N F O "   " V E R S I O N "  
                 a   =   g e t I N I S e t t i n g   s   " I N F O "   " A U T H O R "  
                 n   =   g e t I N I S e t t i n g   s   " I N F O "   " N A M E "  
                 o   =   g e t I N I S e t t i n g   s   " A B O U T "  
                 c   =   g e t I N I S e t t i n g   s   " I N F O "   " D E V "  
                 h   =   g e t I N I S e t t i n g   s   " I N F O "   " H E L P "  
                  
                 r   =   f o r   i   i n   ( g e t I N I S e t t i n g   s )   w h e r e   ( i   ! =   " A B O U T "   a n d   i   ! =   " S C R I P T "   a n d   i   ! =   " C O P Y " )   c o l l e c t   i  
                  
                 r e t u r n   # ( n ,   a ,   v ,   o ,   r ,   c ,   h )  
         )  
  
         o n   _ r A b o u t B R S S   o p e n   d o   (  
                 i   =   g e t S c r i p t I n f o   ( g e t T h i s S c r i p t F i l e n a m e ( ) )  
                          
                 l b l N a m e . c a p t i o n   =   i [ 1 ]  
                 l b l A u t h o r . c a p t i o n   =   i [ 2 ]  
                 l b l V e r . c a p t i o n   =   i [ 3 ]  
                 l b l C o p y . a d d r e s s     =   l b l C o p y . c a p t i o n   =   i [ 6 ]  
         )  
 )  
  
 a d d R o l l o u t   _ r S t e p M a i n B R S S   f B a t c h R e n d e r S i m p l e S c e n e   r o l l e d U p : f a l s e  
 a d d R o l l o u t   _ r A b o u t B R S S   f B a t c h R e n d e r S i m p l e S c e n e   r o l l e d U p : t r u e   