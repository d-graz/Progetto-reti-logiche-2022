# Progetto-reti-logiche-2022

todo : [indici di pagina]

## Introduzione -> spiegazione del problema
## Codifica convoluzionale e introduzione al progetto
Una codifica convoluzionale è un tipo di codifica utilizzata per la *Forward Error Correction* (FEC) in sistemi di telecomunicazioni basati su canali monodirezionali.\
Quindi un codice generato da una codifica convoluzionale, detto anche codice convoluzionale, è un codice che trasforma ogni parola $P_1$ in una parola $P_2$. Definite quindi $l_1 = lenght(P_1)$ e $l_2 = lenght(P_2)$ si definisce il rapoorto $l_1/l_2$ come *tasso di trasmissione del convolutore* (*rate*); $l_2 \geq l_1$.\
Inoltre la trasformazione è una funzione degli ultimi $k$ bit in entrata, $k$ è quindi la *lunghezza dei vincoli* del codice.\
\
Lo scopo del progetto è quello di implementare un componente hardware, tramite l'utilizzo del linguaggio di specifica hw VHDL, in grado di interfacciarsi con una memoria e di applicare una codifica convoluzionale con $rate = \frac{1}{2}$ e $k = 3$\
[immagine del nostro convolutore]
## Specifiche di progetto
[inserire interfaccia del componente hardware specificato]
[inserire funzionamento di memoria ram fornita in tb,tempo di clock target, al tre info di base scrappate dalla codifica]
## Architettura -> approccio, scelte implementative , descrizione della macchina a stati

### Considerazioni iniziali su VHDL
In questo progetto, durante la fase di progettazione e successivamente di sviluppo, non verrà preso mai in considerazione l'utilizzo del costrutto *process* e di conseguenza di architetture di tipo *behavioral* . Questa scelta implementativa, che si riflette sia in fase di sintesi che di implementazione su FPGA, non [sottolineatura magari] è dovuta al fatto che l'autore del progetto creda che l'utilizzo di *process* sia scorretto in qual si voglia forma o maniera; qui si vogliono riconoscere le potenzialità e le funzionalità implementative/strutturali che ne derivano dall'utilizzo di quest'ultimi ma si vuole anche risaltare il maggior strato di astrazione portato da questo costrutto rispetto ad architetture *dataflow* o *structural* (aumento dovuto alle serializzazione di istuzioni che per natura fisica di un componente hw dovrebbero essere paralle).\
È per il motivo sopra citato e per la non diretta corrispondenza tra codice scritto e struttura interna del sintetizzato hw che in questo progetto sono state scartate implementazioni di tipo *behavioral* (vedere se mettere questa ultima parte )anche se magari più "digeribili" a livello di lettura del codice. 

(fuori paragrafo) Tenendo conto delle considerazioni sopra fatte viene ora presentata la prima macchina a stati in grado già di soddisfare ampiamente requisiti di timing sia post sintesi sia post implementazione; viene discussa quest'ultima in quanto alla base del design finale e da considerarsi design ottimale per periodi di clock $clock_{period} \approx [40,100] ns$

## Primo design FSM
[immagine della macchina a stati originale]
### Stati della macchina
- Idle - idle : stato della macchina iniziale dove  
## Design finale FSM

## Code Overview

## Risultati sperimentali

## Conclusioni
- limiti oggetti del sistema
- limiti su ciò che avrei potuto fare meglio
- possibili implementazioni pratiche