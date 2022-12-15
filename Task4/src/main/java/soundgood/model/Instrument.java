/*
 * The MIT License (MIT)
 * Copyright (c) 2020 Leif Lindbäck
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction,including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so,subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

 package soundgood.model;

 /**
  * An account in the bank.
  */
 public class Instrument implements InstrumentDTO {
     private int price;
     private int instrument_id;
     private String brand;
     private String instrument_type;
 
     /**
      * Creates an account for the specified holder with the specified balance and account
      * number.
      *
      * @param instrument_id     The instrument ID.
      * @param instrument_type The instrument type.
      * @param brand    The instrument brand.
      * @param price    The rental fee.
      */
     public Instrument(int instrument_id, String instrument_type, String brand, int price) {
         this.instrument_id = instrument_id;
         this.instrument_type = instrument_type;
         this.brand = brand;
         this.price = price;
     }
 
     /**
      * @return The ID.
      */
     public Integer getInstrumentID() {
         return instrument_id;
     }
 
     /**
      * @return The type.
      */
     public String getInstrumentType() {
         return instrument_type;
     }
 
     /**
      * @return The brand.
      */
     public String getInstrumentBrand() {
         return brand;
     }

     /**
      * @return The price.
      */
      public Integer getInstrumentPrice() {
        return price;
    }
 
     /**
      * @return A string representation of all fields in this object.
      */
     @Override
     public String toString() {
         StringBuilder stringRepresentation = new StringBuilder();
         stringRepresentation.append("Instrument: [");
         stringRepresentation.append("ID: ");
         stringRepresentation.append(instrument_id);
         stringRepresentation.append(", type: ");
         stringRepresentation.append(instrument_type);
         stringRepresentation.append(", brand: ");
         stringRepresentation.append(brand);
         stringRepresentation.append(", price: ");
         stringRepresentation.append(price);
         stringRepresentation.append("]");
         return stringRepresentation.toString();
     }



 }
 