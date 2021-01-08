//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#define SIZE 21
int square [SIZE][SIZE];
int n;
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

void MagicSquare(int n){

	int i, j, k, l, data;
	for (i=0; i<n; i++){
    for (j=0; j<n; j++){
      square[i][j]=0;
		}
	}

	if(Form1->RadioButton5->Checked){
		i=0;
		j=(n-1)/2;
	}
	else if(Form1->RadioButton6->Checked){
		i=(n-1)/2;
		j=n-1;
	}
	else if(Form1->RadioButton7->Checked){
		i=(n-1)/2;
		j=0;
	}
	else if(Form1->RadioButton8->Checked){
		i=n-1;
		j=(n-1)/2;
	}


  square[i][j] = 1;
  data = 2;
  while (data <= n*n){
		if (Form1->RadioButton1->Checked){
			k = (i-1<0) ? n-1 : i-1;
    	l = (j-1<0) ? n-1 : j-1;
			if (square[k][l]>0){
				i = (i+1) % n;
			}
      else {
					i = k;
					j = l;
				}
      }
      else if (Form1->RadioButton2->Checked){
				k = (i+1==n) ? 0 : i+1;
        l = (j-1<0) ? n-1 : j-1;
        if (square[k][l]>0){
					i = (i-1 < 0) ? n-1 : i-1;
				}
        else {
					i = k; j = l;
					}
        }
      else if (Form1->RadioButton3->Checked){
				k = (i-1<0) ? n-1 : i-1;
				l = (j+1==n) ? 0 : j+1;
        if (square[k][l]>0){
					i = (i+1) % n;
				}
        else {
					i = k; j = l;
					}
        }
        else if (Form1->RadioButton4->Checked){
					k = (i+1==n) ? 0 : i+1;
          l = (j+1==n) ? 0 : j+1;
          if (square[k][l]>0) {
						i = (i-1 < 0) ? n-1 : i-1;
					}
          else {
						i = k; j = l;
					}
        }
        square[i][j]=data++;
    }
}

void print(int n){
	int i,j;
	String output;
	for(i=0;i<n;i++){
		output="";
		for(j=0;j<n;j++){
			output+=IntToStr(square[i][j])+"   ";
		}
		Form1->Memo1->Lines->Add(output);
	}
}

void PrintSquare(int n){
	int i,j,k;
	String output;
	int leng = IntToStr(n*n).Length()+6;
	for (i = 0; i < n; i++)
	{
		output="";
		for (j = 0; j < n; j++)
		{
			int blank = leng-IntToStr(square[i][j]).Length();
			for (k = 0; k < blank; k++)
			{
				output+=" ";
			}
			output+=IntToStr(square[i][j]);
		}
		Form1->Memo2->Lines->Add(output);
		Form1->Memo3->Lines->Add(output);
	}
	Form1->StringGrid1->RowCount=n;
	Form1->StringGrid1->ColCount=n;
	for(i=0; i<n; i++){
		for(j=0; j<n; j++){
			Form1->StringGrid1->Cells[j][i]=IntToStr(square[i][j]);
		}
	}
}

void Check(int n)
{
	int i,j,k,row,col,Ldiagonal,Rdiagonal;
	String output,check,result;
	result="";
	int leng = IntToStr(n*n).Length()+6;
	row=0,Ldiagonal=0,Rdiagonal=0;
	for (i = 0; i < n; i++)
	{
		row=0;
		output="";
		for (j = 0; j < n; j++)
		{
			row+=square[i][j];
			if(i==j)
				Ldiagonal+=square[i][j];
			if((i+j)==(n-1))
				Rdiagonal+=square[i][j];
			int blank = leng-IntToStr(square[i][j]).Length();
			for (k = 0; k < blank; k++)
			{
				output+=" ";
			}
			output+=IntToStr(square[i][j]);

		}
		output=output+"  |"+IntToStr(row);

		Form1->Memo4->Lines->Add(output);

	}
	for (i = 0; i < n; i++)
	{
		col=0;
		check="";

		for (j = 0; j < n; j++)
		{

			col+=square[j][i];
		}
		int blank = leng-IntToStr(col).Length();
			for (k = 1; k < blank; k++)
			{
				check+=" ";
			}
			check+="|";
		check+=IntToStr(col);
        result+=check;
	}

	Form1->Memo4->Lines->Add(result+"  \\"+IntToStr(Ldiagonal)+"  /"+IntToStr(Rdiagonal));
}
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
       	int n = StrToInt(Edit1->Text);
		if ((n<1)||(n>SIZE)){
			Form1->Memo1->Lines->Add("n is too big, try 3=<n<=21's odd number");
		}
		else if ((n%2==0)){
			Form1->Memo1->Lines->Add("n is even number, try odd number");
		}
		else{
			Form1->Memo1->Lines->Add("-------------"+IntToStr(n)+"*"+IntToStr(n)+"-------------");
			Form1->Memo2->Lines->Add("-------------"+IntToStr(n)+"*"+IntToStr(n)+"-------------");
			Form1->Memo3->Lines->Add("-------------"+IntToStr(n)+"*"+IntToStr(n)+"-------------");
			Form1->Memo4->Lines->Add("-------------"+IntToStr(n)+"*"+IntToStr(n)+"-------------");
  		MagicSquare(n);
			print(n);
			PrintSquare(n);
			Check(n);
        }


}
//---------------------------------------------------------------------------
