package org.example;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import java.io.FileInputStream;
import java.io.FileWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ExcelToXml {
    public static void main(String[] args) {
        try (FileInputStream file = new FileInputStream("C:\\Users\\HP\\Downloads\\EtudiantGINF2.xlsx")) {
            Workbook workbook = WorkbookFactory.create(file);
            Sheet sheet = workbook.getSheetAt(0);

            Document document = DocumentHelper.createDocument();
            Element rootElement = document.addElement("Etudiants");


            int startRow = 3;
            int startCol = 1;

            for (int rowIndex = startRow; rowIndex <= sheet.getLastRowNum(); rowIndex++) {
                Row row = sheet.getRow(rowIndex);
                if (row != null) {
                    Element etudiantElement = rootElement.addElement("Etudiant");

                    for (int colIndex = startCol; colIndex < row.getLastCellNum(); colIndex++) {
                        Cell cell = row.getCell(colIndex);
                        if (cell != null) {
                            String columnName = sheet.getRow(2).getCell(colIndex).toString().trim();
                            columnName = cleanElementName(columnName);

                            if ("Date_de_Naissance".equals(columnName)) {
                                String dateStr = cell.toString();
                                String formattedDate = formatDateOfBirth(dateStr);
                                Element dateElement = etudiantElement.addElement(columnName);
                                dateElement.setText(formattedDate);
                            } else if ("CNE".equals(columnName)) {

                                if (cell.getCellType() == CellType.NUMERIC) {

                                    Element cneElement = etudiantElement.addElement(columnName);
                                    cneElement.setText(String.valueOf((long) cell.getNumericCellValue()));
                                } else {

                                    Element cneElement = etudiantElement.addElement(columnName);
                                    cneElement.setText(cell.toString());
                                }
                            } else {
                                Element columnElement = etudiantElement.addElement(columnName);
                                columnElement.setText(cell.toString());
                            }
                        }
                    }
                }
            }

            try (FileWriter fileWriter = new FileWriter("C:\\Users\\HP\\Desktop\\fichier.xml")) {

                OutputFormat format = OutputFormat.createPrettyPrint();
                XMLWriter xmlWriter = new XMLWriter(fileWriter, format);
                xmlWriter.write(document);
                xmlWriter.close();
            }

            workbook.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("la conversion est établie avec succes");
    }

    private static String cleanElementName(String columnName) {

        return columnName.replaceAll(" ", "_");
    }

    private static String formatDateOfBirth(String dateStr) {
        SimpleDateFormat sourceFormat;

        try {
            sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date parsedDate = sourceFormat.parse(dateStr);
            return new SimpleDateFormat("dd/MM/yyyy").format(parsedDate);
        } catch (ParseException e) {

        }

        try {
            sourceFormat = new SimpleDateFormat("dd-MMM-yyyy");
            Date parsedDate = sourceFormat.parse(dateStr);
            return new SimpleDateFormat("dd/MM/yyyy").format(parsedDate);
        } catch (ParseException e) {

        }

        return dateStr;


    }

}

