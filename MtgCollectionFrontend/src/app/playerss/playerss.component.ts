import {AfterViewInit, Component, inject, ViewChild} from '@angular/core';
import {MatTableModule, MatTable, MatTableDataSource} from '@angular/material/table';
import { MatPaginatorModule, MatPaginator } from '@angular/material/paginator';
import { MatSortModule, MatSort } from '@angular/material/sort';
import {PlayerService} from '../player.service';
import {Player} from '../player';
import {RouterLink} from '@angular/router';

@Component({
  selector: 'app-playerss',
  templateUrl: './playerss.component.html',
  styleUrl: './playerss.component.css',
  imports: [MatTableModule, MatPaginatorModule, MatSortModule, RouterLink]
})
export class PlayerssComponent implements AfterViewInit {
  playerService = inject(PlayerService)
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort) sort!: MatSort;
  @ViewChild(MatTable) table!: MatTable<Player>;
  dataSource = new MatTableDataSource<Player>();
  /** Columns displayed in the table. Columns IDs can be added, removed, or reordered. */
  displayedColumns = ['id', 'name', 'collectionValue', 'detail'];
  ngOnInit(){
    this.dataSource = new MatTableDataSource<Player>();
    this.refreshData()
  }
  ngAfterViewInit(): void {
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
    this.table.dataSource = this.dataSource;
  }
  refreshData(): void {
    this.playerService.getPlayers().subscribe(
      (resList) => {
        console.log(resList)
        this.dataSource.data = resList
      });
  }

}
